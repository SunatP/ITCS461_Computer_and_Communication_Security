
lab5.exe:     file format pei-i386


Disassembly of section .text:

00401000 <___mingw_CRTStartup>:
  401000:	53                   	push   ebx
  401001:	83 ec 38             	sub    esp,0x38
  401004:	a1 a0 32 40 00       	mov    eax,ds:0x4032a0
  401009:	85 c0                	test   eax,eax
  40100b:	74 1c                	je     401029 <___mingw_CRTStartup+0x29>
  40100d:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
  401014:	00 
  401015:	c7 44 24 04 02 00 00 	mov    DWORD PTR [esp+0x4],0x2
  40101c:	00 
  40101d:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
  401024:	ff d0                	call   eax
  401026:	83 ec 0c             	sub    esp,0xc
  401029:	c7 04 24 10 11 40 00 	mov    DWORD PTR [esp],0x401110
  401030:	e8 ab 0d 00 00       	call   401de0 <_SetUnhandledExceptionFilter@4>
  401035:	83 ec 04             	sub    esp,0x4
  401038:	e8 23 06 00 00       	call   401660 <___cpu_features_init>
  40103d:	e8 fe 06 00 00       	call   401740 <__fpreset>
  401042:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  401046:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  40104a:	a1 00 20 40 00       	mov    eax,ds:0x402000
  40104f:	c7 44 24 04 00 50 40 	mov    DWORD PTR [esp+0x4],0x405000
  401056:	00 
  401057:	c7 04 24 04 50 40 00 	mov    DWORD PTR [esp],0x405004
  40105e:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [esp+0x2c],0x0
  401065:	00 
  401066:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  40106a:	8d 44 24 28          	lea    eax,[esp+0x28]
  40106e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401072:	e8 e9 0c 00 00       	call   401d60 <___getmainargs>
  401077:	a1 18 50 40 00       	mov    eax,ds:0x405018
  40107c:	85 c0                	test   eax,eax
  40107e:	74 42                	je     4010c2 <___mingw_CRTStartup+0xc2>
  401080:	8b 1d 0c 61 40 00    	mov    ebx,DWORD PTR ds:0x40610c
  401086:	a3 04 20 40 00       	mov    ds:0x402004,eax
  40108b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40108f:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  401092:	89 04 24             	mov    DWORD PTR [esp],eax
  401095:	e8 ce 0c 00 00       	call   401d68 <__setmode>
  40109a:	a1 18 50 40 00       	mov    eax,ds:0x405018
  40109f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4010a3:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  4010a6:	89 04 24             	mov    DWORD PTR [esp],eax
  4010a9:	e8 ba 0c 00 00       	call   401d68 <__setmode>
  4010ae:	a1 18 50 40 00       	mov    eax,ds:0x405018
  4010b3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4010b7:	8b 43 50             	mov    eax,DWORD PTR [ebx+0x50]
  4010ba:	89 04 24             	mov    DWORD PTR [esp],eax
  4010bd:	e8 a6 0c 00 00       	call   401d68 <__setmode>
  4010c2:	e8 a9 0c 00 00       	call   401d70 <___p__fmode>
  4010c7:	8b 15 04 20 40 00    	mov    edx,DWORD PTR ds:0x402004
  4010cd:	89 10                	mov    DWORD PTR [eax],edx
  4010cf:	e8 ec 07 00 00       	call   4018c0 <__pei386_runtime_relocator>
  4010d4:	83 e4 f0             	and    esp,0xfffffff0
  4010d7:	e8 44 0a 00 00       	call   401b20 <___main>
  4010dc:	e8 97 0c 00 00       	call   401d78 <___p__environ>
  4010e1:	8b 00                	mov    eax,DWORD PTR [eax]
  4010e3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4010e7:	a1 00 50 40 00       	mov    eax,ds:0x405000
  4010ec:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4010f0:	a1 04 50 40 00       	mov    eax,ds:0x405004
  4010f5:	89 04 24             	mov    DWORD PTR [esp],eax
  4010f8:	e8 86 02 00 00       	call   401383 <_main>
  4010fd:	89 c3                	mov    ebx,eax
  4010ff:	e8 7c 0c 00 00       	call   401d80 <__cexit>
  401104:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401107:	e8 dc 0c 00 00       	call   401de8 <_ExitProcess@4>
  40110c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401110 <__gnu_exception_handler@4>:
  401110:	53                   	push   ebx
  401111:	83 ec 28             	sub    esp,0x28
  401114:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401118:	8b 00                	mov    eax,DWORD PTR [eax]
  40111a:	8b 00                	mov    eax,DWORD PTR [eax]
  40111c:	3d 91 00 00 c0       	cmp    eax,0xc0000091
  401121:	77 3d                	ja     401160 <__gnu_exception_handler@4+0x50>
  401123:	3d 8d 00 00 c0       	cmp    eax,0xc000008d
  401128:	72 4d                	jb     401177 <__gnu_exception_handler@4+0x67>
  40112a:	bb 01 00 00 00       	mov    ebx,0x1
  40112f:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  401136:	00 
  401137:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  40113e:	e8 45 0c 00 00       	call   401d88 <_signal>
  401143:	83 f8 01             	cmp    eax,0x1
  401146:	0f 84 f4 00 00 00    	je     401240 <__gnu_exception_handler@4+0x130>
  40114c:	85 c0                	test   eax,eax
  40114e:	0f 85 a0 00 00 00    	jne    4011f4 <__gnu_exception_handler@4+0xe4>
  401154:	31 c0                	xor    eax,eax
  401156:	83 c4 28             	add    esp,0x28
  401159:	5b                   	pop    ebx
  40115a:	c2 04 00             	ret    0x4
  40115d:	8d 76 00             	lea    esi,[esi+0x0]
  401160:	3d 94 00 00 c0       	cmp    eax,0xc0000094
  401165:	74 4b                	je     4011b2 <__gnu_exception_handler@4+0xa2>
  401167:	3d 96 00 00 c0       	cmp    eax,0xc0000096
  40116c:	74 17                	je     401185 <__gnu_exception_handler@4+0x75>
  40116e:	3d 93 00 00 c0       	cmp    eax,0xc0000093
  401173:	75 df                	jne    401154 <__gnu_exception_handler@4+0x44>
  401175:	eb b3                	jmp    40112a <__gnu_exception_handler@4+0x1a>
  401177:	3d 05 00 00 c0       	cmp    eax,0xc0000005
  40117c:	74 42                	je     4011c0 <__gnu_exception_handler@4+0xb0>
  40117e:	3d 1d 00 00 c0       	cmp    eax,0xc000001d
  401183:	75 cf                	jne    401154 <__gnu_exception_handler@4+0x44>
  401185:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  40118c:	00 
  40118d:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  401194:	e8 ef 0b 00 00       	call   401d88 <_signal>
  401199:	83 f8 01             	cmp    eax,0x1
  40119c:	74 69                	je     401207 <__gnu_exception_handler@4+0xf7>
  40119e:	85 c0                	test   eax,eax
  4011a0:	74 b2                	je     401154 <__gnu_exception_handler@4+0x44>
  4011a2:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  4011a9:	ff d0                	call   eax
  4011ab:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4011b0:	eb a4                	jmp    401156 <__gnu_exception_handler@4+0x46>
  4011b2:	31 db                	xor    ebx,ebx
  4011b4:	e9 76 ff ff ff       	jmp    40112f <__gnu_exception_handler@4+0x1f>
  4011b9:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4011c0:	c7 44 24 04 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  4011c7:	00 
  4011c8:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  4011cf:	e8 b4 0b 00 00       	call   401d88 <_signal>
  4011d4:	83 f8 01             	cmp    eax,0x1
  4011d7:	74 4a                	je     401223 <__gnu_exception_handler@4+0x113>
  4011d9:	85 c0                	test   eax,eax
  4011db:	0f 84 73 ff ff ff    	je     401154 <__gnu_exception_handler@4+0x44>
  4011e1:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  4011e8:	ff d0                	call   eax
  4011ea:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4011ef:	e9 62 ff ff ff       	jmp    401156 <__gnu_exception_handler@4+0x46>
  4011f4:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  4011fb:	ff d0                	call   eax
  4011fd:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401202:	e9 4f ff ff ff       	jmp    401156 <__gnu_exception_handler@4+0x46>
  401207:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  40120e:	00 
  40120f:	c7 04 24 04 00 00 00 	mov    DWORD PTR [esp],0x4
  401216:	e8 6d 0b 00 00       	call   401d88 <_signal>
  40121b:	83 c8 ff             	or     eax,0xffffffff
  40121e:	e9 33 ff ff ff       	jmp    401156 <__gnu_exception_handler@4+0x46>
  401223:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  40122a:	00 
  40122b:	c7 04 24 0b 00 00 00 	mov    DWORD PTR [esp],0xb
  401232:	e8 51 0b 00 00       	call   401d88 <_signal>
  401237:	83 c8 ff             	or     eax,0xffffffff
  40123a:	e9 17 ff ff ff       	jmp    401156 <__gnu_exception_handler@4+0x46>
  40123f:	90                   	nop
  401240:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401247:	00 
  401248:	c7 04 24 08 00 00 00 	mov    DWORD PTR [esp],0x8
  40124f:	e8 34 0b 00 00       	call   401d88 <_signal>
  401254:	85 db                	test   ebx,ebx
  401256:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40125b:	0f 84 f5 fe ff ff    	je     401156 <__gnu_exception_handler@4+0x46>
  401261:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  401265:	e8 d6 04 00 00       	call   401740 <__fpreset>
  40126a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  40126e:	e9 e3 fe ff ff       	jmp    401156 <__gnu_exception_handler@4+0x46>
  401273:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  401279:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401280 <_mainCRTStartup>:
  401280:	83 ec 1c             	sub    esp,0x1c
  401283:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  40128a:	ff 15 04 61 40 00    	call   DWORD PTR ds:0x406104
  401290:	e8 6b fd ff ff       	call   401000 <___mingw_CRTStartup>
  401295:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401299:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004012a0 <_WinMainCRTStartup>:
  4012a0:	83 ec 1c             	sub    esp,0x1c
  4012a3:	c7 04 24 02 00 00 00 	mov    DWORD PTR [esp],0x2
  4012aa:	ff 15 04 61 40 00    	call   DWORD PTR ds:0x406104
  4012b0:	e8 4b fd ff ff       	call   401000 <___mingw_CRTStartup>
  4012b5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  4012b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004012c0 <_atexit>:
  4012c0:	a1 1c 61 40 00       	mov    eax,ds:0x40611c
  4012c5:	ff e0                	jmp    eax
  4012c7:	89 f6                	mov    esi,esi
  4012c9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004012d0 <__onexit>:
  4012d0:	a1 10 61 40 00       	mov    eax,ds:0x406110
  4012d5:	ff e0                	jmp    eax
  4012d7:	90                   	nop
  4012d8:	90                   	nop
  4012d9:	90                   	nop
  4012da:	90                   	nop
  4012db:	90                   	nop
  4012dc:	90                   	nop
  4012dd:	90                   	nop
  4012de:	90                   	nop
  4012df:	90                   	nop

004012e0 <___gcc_register_frame>:
  4012e0:	55                   	push   ebp
  4012e1:	89 e5                	mov    ebp,esp
  4012e3:	83 ec 18             	sub    esp,0x18
  4012e6:	a1 0c 20 40 00       	mov    eax,ds:0x40200c
  4012eb:	85 c0                	test   eax,eax
  4012ed:	74 3a                	je     401329 <___gcc_register_frame+0x49>
  4012ef:	c7 04 24 00 30 40 00 	mov    DWORD PTR [esp],0x403000
  4012f6:	e8 f5 0a 00 00       	call   401df0 <_GetModuleHandleA@4>
  4012fb:	83 ec 04             	sub    esp,0x4
  4012fe:	85 c0                	test   eax,eax
  401300:	ba 00 00 00 00       	mov    edx,0x0
  401305:	74 15                	je     40131c <___gcc_register_frame+0x3c>
  401307:	c7 44 24 04 0e 30 40 	mov    DWORD PTR [esp+0x4],0x40300e
  40130e:	00 
  40130f:	89 04 24             	mov    DWORD PTR [esp],eax
  401312:	e8 e1 0a 00 00       	call   401df8 <_GetProcAddress@8>
  401317:	83 ec 08             	sub    esp,0x8
  40131a:	89 c2                	mov    edx,eax
  40131c:	85 d2                	test   edx,edx
  40131e:	74 09                	je     401329 <___gcc_register_frame+0x49>
  401320:	c7 04 24 0c 20 40 00 	mov    DWORD PTR [esp],0x40200c
  401327:	ff d2                	call   edx
  401329:	c7 04 24 40 13 40 00 	mov    DWORD PTR [esp],0x401340
  401330:	e8 8b ff ff ff       	call   4012c0 <_atexit>
  401335:	c9                   	leave  
  401336:	c3                   	ret    
  401337:	89 f6                	mov    esi,esi
  401339:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401340 <___gcc_deregister_frame>:
  401340:	55                   	push   ebp
  401341:	89 e5                	mov    ebp,esp
  401343:	5d                   	pop    ebp
  401344:	c3                   	ret    
  401345:	90                   	nop
  401346:	90                   	nop
  401347:	90                   	nop
  401348:	90                   	nop
  401349:	90                   	nop
  40134a:	90                   	nop
  40134b:	90                   	nop
  40134c:	90                   	nop
  40134d:	90                   	nop
  40134e:	90                   	nop
  40134f:	90                   	nop

00401350 <_temp>:
  401350:	55                   	push   ebp
  401351:	89 e5                	mov    ebp,esp
  401353:	90                   	nop
  401354:	5d                   	pop    ebp
  401355:	c3                   	ret    

00401356 <_secret_function>:
  401356:	55                   	push   ebp
  401357:	89 e5                	mov    ebp,esp
  401359:	83 ec 18             	sub    esp,0x18
  40135c:	c7 04 24 24 30 40 00 	mov    DWORD PTR [esp],0x403024
  401363:	e8 28 0a 00 00       	call   401d90 <_puts>
  401368:	c7 04 24 64 30 40 00 	mov    DWORD PTR [esp],0x403064
  40136f:	e8 1c 0a 00 00       	call   401d90 <_puts>
  401374:	c7 04 24 24 30 40 00 	mov    DWORD PTR [esp],0x403024
  40137b:	e8 10 0a 00 00       	call   401d90 <_puts>
  401380:	90                   	nop
  401381:	c9                   	leave  
  401382:	c3                   	ret    

00401383 <_main>:
  401383:	55                   	push   ebp
  401384:	89 e5                	mov    ebp,esp
  401386:	83 e4 f0             	and    esp,0xfffffff0
  401389:	81 ec e0 00 00 00    	sub    esp,0xe0
  40138f:	e8 8c 07 00 00       	call   401b20 <___main>
  401394:	c7 84 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],0x11223344
  40139b:	44 33 22 11 
  40139f:	c7 84 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],0x55667788
  4013a6:	88 77 66 55 
  4013aa:	c7 04 24 a0 30 40 00 	mov    DWORD PTR [esp],0x4030a0
  4013b1:	e8 da 09 00 00       	call   401d90 <_puts>
  4013b6:	8b 94 24 dc 00 00 00 	mov    edx,DWORD PTR [esp+0xdc]
  4013bd:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
  4013c4:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  4013c8:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4013cc:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  4013d3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4013d7:	c7 04 24 e0 30 40 00 	mov    DWORD PTR [esp],0x4030e0
  4013de:	e8 b5 09 00 00       	call   401d98 <_printf>
  4013e3:	8b 94 24 d8 00 00 00 	mov    edx,DWORD PTR [esp+0xd8]
  4013ea:	8b 84 24 d8 00 00 00 	mov    eax,DWORD PTR [esp+0xd8]
  4013f1:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  4013f5:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4013f9:	8d 84 24 d8 00 00 00 	lea    eax,[esp+0xd8]
  401400:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401404:	c7 04 24 0c 31 40 00 	mov    DWORD PTR [esp],0x40310c
  40140b:	e8 88 09 00 00       	call   401d98 <_printf>
  401410:	8d 44 24 10          	lea    eax,[esp+0x10]
  401414:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401418:	c7 04 24 36 31 40 00 	mov    DWORD PTR [esp],0x403136
  40141f:	e8 74 09 00 00       	call   401d98 <_printf>
  401424:	c7 44 24 04 56 13 40 	mov    DWORD PTR [esp+0x4],0x401356
  40142b:	00 
  40142c:	c7 04 24 48 31 40 00 	mov    DWORD PTR [esp],0x403148
  401433:	e8 60 09 00 00       	call   401d98 <_printf>
  401438:	c7 04 24 68 31 40 00 	mov    DWORD PTR [esp],0x403168
  40143f:	e8 4c 09 00 00       	call   401d90 <_puts>
  401444:	c7 04 24 a8 31 40 00 	mov    DWORD PTR [esp],0x4031a8
  40144b:	e8 40 09 00 00       	call   401d90 <_puts>
  401450:	c7 04 24 db 31 40 00 	mov    DWORD PTR [esp],0x4031db
  401457:	e8 3c 09 00 00       	call   401d98 <_printf>
  40145c:	8d 44 24 10          	lea    eax,[esp+0x10]
  401460:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401464:	c7 04 24 ed 31 40 00 	mov    DWORD PTR [esp],0x4031ed
  40146b:	e8 30 09 00 00       	call   401da0 <_scanf>
  401470:	8d 44 24 10          	lea    eax,[esp+0x10]
  401474:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401478:	c7 04 24 f0 31 40 00 	mov    DWORD PTR [esp],0x4031f0
  40147f:	e8 14 09 00 00       	call   401d98 <_printf>
  401484:	8d 44 24 10          	lea    eax,[esp+0x10]
  401488:	89 04 24             	mov    DWORD PTR [esp],eax
  40148b:	e8 18 09 00 00       	call   401da8 <_strlen>
  401490:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401494:	c7 04 24 fe 31 40 00 	mov    DWORD PTR [esp],0x4031fe
  40149b:	e8 f8 08 00 00       	call   401d98 <_printf>
  4014a0:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
  4014a7:	3d de c0 ad de       	cmp    eax,0xdeadc0de
  4014ac:	75 0e                	jne    4014bc <_main+0x139>
  4014ae:	c7 04 24 18 32 40 00 	mov    DWORD PTR [esp],0x403218
  4014b5:	e8 d6 08 00 00       	call   401d90 <_puts>
  4014ba:	eb 0c                	jmp    4014c8 <_main+0x145>
  4014bc:	c7 04 24 40 32 40 00 	mov    DWORD PTR [esp],0x403240
  4014c3:	e8 c8 08 00 00       	call   401d90 <_puts>
  4014c8:	c7 04 24 64 32 40 00 	mov    DWORD PTR [esp],0x403264
  4014cf:	e8 bc 08 00 00       	call   401d90 <_puts>
  4014d4:	8b 94 24 dc 00 00 00 	mov    edx,DWORD PTR [esp+0xdc]
  4014db:	8b 84 24 dc 00 00 00 	mov    eax,DWORD PTR [esp+0xdc]
  4014e2:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  4014e6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  4014ea:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  4014f1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4014f5:	c7 04 24 e0 30 40 00 	mov    DWORD PTR [esp],0x4030e0
  4014fc:	e8 97 08 00 00       	call   401d98 <_printf>
  401501:	8b 94 24 d8 00 00 00 	mov    edx,DWORD PTR [esp+0xd8]
  401508:	8b 84 24 d8 00 00 00 	mov    eax,DWORD PTR [esp+0xd8]
  40150f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  401513:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401517:	8d 84 24 d8 00 00 00 	lea    eax,[esp+0xd8]
  40151e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401522:	c7 04 24 0c 31 40 00 	mov    DWORD PTR [esp],0x40310c
  401529:	e8 6a 08 00 00       	call   401d98 <_printf>
  40152e:	8d 44 24 10          	lea    eax,[esp+0x10]
  401532:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401536:	c7 04 24 36 31 40 00 	mov    DWORD PTR [esp],0x403136
  40153d:	e8 56 08 00 00       	call   401d98 <_printf>
  401542:	c7 44 24 04 56 13 40 	mov    DWORD PTR [esp+0x4],0x401356
  401549:	00 
  40154a:	c7 04 24 48 31 40 00 	mov    DWORD PTR [esp],0x403148
  401551:	e8 42 08 00 00       	call   401d98 <_printf>
  401556:	c7 04 24 68 31 40 00 	mov    DWORD PTR [esp],0x403168
  40155d:	e8 2e 08 00 00       	call   401d90 <_puts>
  401562:	b8 00 00 00 00       	mov    eax,0x0
  401567:	c9                   	leave  
  401568:	c3                   	ret    
  401569:	90                   	nop
  40156a:	90                   	nop
  40156b:	90                   	nop
  40156c:	66 90                	xchg   ax,ax
  40156e:	66 90                	xchg   ax,ax

00401570 <___dyn_tls_dtor@12>:
  401570:	83 ec 1c             	sub    esp,0x1c
  401573:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401577:	85 c0                	test   eax,eax
  401579:	74 15                	je     401590 <___dyn_tls_dtor@12+0x20>
  40157b:	83 f8 03             	cmp    eax,0x3
  40157e:	74 10                	je     401590 <___dyn_tls_dtor@12+0x20>
  401580:	b8 01 00 00 00       	mov    eax,0x1
  401585:	83 c4 1c             	add    esp,0x1c
  401588:	c2 0c 00             	ret    0xc
  40158b:	90                   	nop
  40158c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401590:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  401594:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401598:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  40159c:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  4015a0:	89 04 24             	mov    DWORD PTR [esp],eax
  4015a3:	e8 18 07 00 00       	call   401cc0 <___mingw_TLScallback>
  4015a8:	b8 01 00 00 00       	mov    eax,0x1
  4015ad:	83 c4 1c             	add    esp,0x1c
  4015b0:	c2 0c 00             	ret    0xc
  4015b3:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4015b9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004015c0 <___dyn_tls_init@12>:
  4015c0:	56                   	push   esi
  4015c1:	53                   	push   ebx
  4015c2:	83 ec 14             	sub    esp,0x14
  4015c5:	83 3d 28 50 40 00 02 	cmp    DWORD PTR ds:0x405028,0x2
  4015cc:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  4015d0:	74 0a                	je     4015dc <___dyn_tls_init@12+0x1c>
  4015d2:	c7 05 28 50 40 00 02 	mov    DWORD PTR ds:0x405028,0x2
  4015d9:	00 00 00 
  4015dc:	83 f8 02             	cmp    eax,0x2
  4015df:	74 12                	je     4015f3 <___dyn_tls_init@12+0x33>
  4015e1:	83 f8 01             	cmp    eax,0x1
  4015e4:	74 42                	je     401628 <___dyn_tls_init@12+0x68>
  4015e6:	83 c4 14             	add    esp,0x14
  4015e9:	b8 01 00 00 00       	mov    eax,0x1
  4015ee:	5b                   	pop    ebx
  4015ef:	5e                   	pop    esi
  4015f0:	c2 0c 00             	ret    0xc
  4015f3:	be 14 70 40 00       	mov    esi,0x407014
  4015f8:	81 ee 14 70 40 00    	sub    esi,0x407014
  4015fe:	c1 fe 02             	sar    esi,0x2
  401601:	85 f6                	test   esi,esi
  401603:	7e e1                	jle    4015e6 <___dyn_tls_init@12+0x26>
  401605:	31 db                	xor    ebx,ebx
  401607:	8b 04 9d 14 70 40 00 	mov    eax,DWORD PTR [ebx*4+0x407014]
  40160e:	85 c0                	test   eax,eax
  401610:	74 02                	je     401614 <___dyn_tls_init@12+0x54>
  401612:	ff d0                	call   eax
  401614:	83 c3 01             	add    ebx,0x1
  401617:	39 f3                	cmp    ebx,esi
  401619:	75 ec                	jne    401607 <___dyn_tls_init@12+0x47>
  40161b:	83 c4 14             	add    esp,0x14
  40161e:	b8 01 00 00 00       	mov    eax,0x1
  401623:	5b                   	pop    ebx
  401624:	5e                   	pop    esi
  401625:	c2 0c 00             	ret    0xc
  401628:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  40162c:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  401633:	00 
  401634:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401638:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  40163c:	89 04 24             	mov    DWORD PTR [esp],eax
  40163f:	e8 7c 06 00 00       	call   401cc0 <___mingw_TLScallback>
  401644:	eb a0                	jmp    4015e6 <___dyn_tls_init@12+0x26>
  401646:	8d 76 00             	lea    esi,[esi+0x0]
  401649:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

00401650 <___tlregdtor>:
  401650:	31 c0                	xor    eax,eax
  401652:	c3                   	ret    
  401653:	90                   	nop
  401654:	90                   	nop
  401655:	90                   	nop
  401656:	90                   	nop
  401657:	90                   	nop
  401658:	90                   	nop
  401659:	90                   	nop
  40165a:	90                   	nop
  40165b:	90                   	nop
  40165c:	90                   	nop
  40165d:	90                   	nop
  40165e:	90                   	nop
  40165f:	90                   	nop

00401660 <___cpu_features_init>:
  401660:	9c                   	pushf  
  401661:	9c                   	pushf  
  401662:	58                   	pop    eax
  401663:	89 c2                	mov    edx,eax
  401665:	35 00 00 20 00       	xor    eax,0x200000
  40166a:	50                   	push   eax
  40166b:	9d                   	popf   
  40166c:	9c                   	pushf  
  40166d:	58                   	pop    eax
  40166e:	9d                   	popf   
  40166f:	31 d0                	xor    eax,edx
  401671:	a9 00 00 20 00       	test   eax,0x200000
  401676:	0f 84 a5 00 00 00    	je     401721 <___cpu_features_init+0xc1>
  40167c:	53                   	push   ebx
  40167d:	31 c0                	xor    eax,eax
  40167f:	0f a2                	cpuid  
  401681:	85 c0                	test   eax,eax
  401683:	0f 84 97 00 00 00    	je     401720 <___cpu_features_init+0xc0>
  401689:	b8 01 00 00 00       	mov    eax,0x1
  40168e:	0f a2                	cpuid  
  401690:	f6 c6 01             	test   dh,0x1
  401693:	74 07                	je     40169c <___cpu_features_init+0x3c>
  401695:	83 0d 1c 50 40 00 01 	or     DWORD PTR ds:0x40501c,0x1
  40169c:	f6 c6 80             	test   dh,0x80
  40169f:	74 07                	je     4016a8 <___cpu_features_init+0x48>
  4016a1:	83 0d 1c 50 40 00 02 	or     DWORD PTR ds:0x40501c,0x2
  4016a8:	f7 c2 00 00 80 00    	test   edx,0x800000
  4016ae:	74 07                	je     4016b7 <___cpu_features_init+0x57>
  4016b0:	83 0d 1c 50 40 00 04 	or     DWORD PTR ds:0x40501c,0x4
  4016b7:	f7 c2 00 00 00 01    	test   edx,0x1000000
  4016bd:	74 07                	je     4016c6 <___cpu_features_init+0x66>
  4016bf:	83 0d 1c 50 40 00 08 	or     DWORD PTR ds:0x40501c,0x8
  4016c6:	f7 c2 00 00 00 02    	test   edx,0x2000000
  4016cc:	74 07                	je     4016d5 <___cpu_features_init+0x75>
  4016ce:	83 0d 1c 50 40 00 10 	or     DWORD PTR ds:0x40501c,0x10
  4016d5:	81 e2 00 00 00 04    	and    edx,0x4000000
  4016db:	74 07                	je     4016e4 <___cpu_features_init+0x84>
  4016dd:	83 0d 1c 50 40 00 20 	or     DWORD PTR ds:0x40501c,0x20
  4016e4:	f6 c1 01             	test   cl,0x1
  4016e7:	74 07                	je     4016f0 <___cpu_features_init+0x90>
  4016e9:	83 0d 1c 50 40 00 40 	or     DWORD PTR ds:0x40501c,0x40
  4016f0:	80 e5 20             	and    ch,0x20
  4016f3:	75 2e                	jne    401723 <___cpu_features_init+0xc3>
  4016f5:	b8 00 00 00 80       	mov    eax,0x80000000
  4016fa:	0f a2                	cpuid  
  4016fc:	3d 00 00 00 80       	cmp    eax,0x80000000
  401701:	76 1d                	jbe    401720 <___cpu_features_init+0xc0>
  401703:	b8 01 00 00 80       	mov    eax,0x80000001
  401708:	0f a2                	cpuid  
  40170a:	85 d2                	test   edx,edx
  40170c:	78 22                	js     401730 <___cpu_features_init+0xd0>
  40170e:	81 e2 00 00 00 40    	and    edx,0x40000000
  401714:	74 0a                	je     401720 <___cpu_features_init+0xc0>
  401716:	81 0d 1c 50 40 00 00 	or     DWORD PTR ds:0x40501c,0x200
  40171d:	02 00 00 
  401720:	5b                   	pop    ebx
  401721:	f3 c3                	repz ret 
  401723:	81 0d 1c 50 40 00 80 	or     DWORD PTR ds:0x40501c,0x80
  40172a:	00 00 00 
  40172d:	eb c6                	jmp    4016f5 <___cpu_features_init+0x95>
  40172f:	90                   	nop
  401730:	81 0d 1c 50 40 00 00 	or     DWORD PTR ds:0x40501c,0x100
  401737:	01 00 00 
  40173a:	eb d2                	jmp    40170e <___cpu_features_init+0xae>
  40173c:	90                   	nop
  40173d:	90                   	nop
  40173e:	90                   	nop
  40173f:	90                   	nop

00401740 <__fpreset>:
  401740:	db e3                	fninit 
  401742:	c3                   	ret    
  401743:	90                   	nop
  401744:	90                   	nop
  401745:	90                   	nop
  401746:	90                   	nop
  401747:	90                   	nop
  401748:	90                   	nop
  401749:	90                   	nop
  40174a:	90                   	nop
  40174b:	90                   	nop
  40174c:	90                   	nop
  40174d:	90                   	nop
  40174e:	90                   	nop
  40174f:	90                   	nop

00401750 <___report_error>:
  401750:	53                   	push   ebx
  401751:	83 ec 28             	sub    esp,0x28
  401754:	8b 1d 0c 61 40 00    	mov    ebx,DWORD PTR ds:0x40610c
  40175a:	8d 44 24 34          	lea    eax,[esp+0x34]
  40175e:	c7 44 24 08 17 00 00 	mov    DWORD PTR [esp+0x8],0x17
  401765:	00 
  401766:	c7 44 24 04 01 00 00 	mov    DWORD PTR [esp+0x4],0x1
  40176d:	00 
  40176e:	83 c3 40             	add    ebx,0x40
  401771:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  401775:	c7 04 24 a4 32 40 00 	mov    DWORD PTR [esp],0x4032a4
  40177c:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  401780:	e8 2b 06 00 00       	call   401db0 <_fwrite>
  401785:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  401789:	89 1c 24             	mov    DWORD PTR [esp],ebx
  40178c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  401790:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401794:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401798:	e8 1b 06 00 00       	call   401db8 <_vfprintf>
  40179d:	e8 1e 06 00 00       	call   401dc0 <_abort>
  4017a2:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  4017a9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

004017b0 <___write_memory.part.0>:
  4017b0:	83 ec 5c             	sub    esp,0x5c
  4017b3:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  4017b7:	89 c3                	mov    ebx,eax
  4017b9:	8d 44 24 24          	lea    eax,[esp+0x24]
  4017bd:	c7 44 24 08 1c 00 00 	mov    DWORD PTR [esp+0x8],0x1c
  4017c4:	00 
  4017c5:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  4017c9:	89 1c 24             	mov    DWORD PTR [esp],ebx
  4017cc:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  4017d0:	89 d6                	mov    esi,edx
  4017d2:	89 7c 24 54          	mov    DWORD PTR [esp+0x54],edi
  4017d6:	89 cf                	mov    edi,ecx
  4017d8:	89 6c 24 58          	mov    DWORD PTR [esp+0x58],ebp
  4017dc:	e8 1f 06 00 00       	call   401e00 <_VirtualQuery@12>
  4017e1:	83 ec 0c             	sub    esp,0xc
  4017e4:	85 c0                	test   eax,eax
  4017e6:	0f 84 ba 00 00 00    	je     4018a6 <___write_memory.part.0+0xf6>
  4017ec:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  4017f0:	83 f8 04             	cmp    eax,0x4
  4017f3:	75 2b                	jne    401820 <___write_memory.part.0+0x70>
  4017f5:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  4017f9:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  4017fd:	89 1c 24             	mov    DWORD PTR [esp],ebx
  401800:	e8 c3 05 00 00       	call   401dc8 <_memcpy>
  401805:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
  401809:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
  40180d:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  401811:	8b 6c 24 58          	mov    ebp,DWORD PTR [esp+0x58]
  401815:	83 c4 5c             	add    esp,0x5c
  401818:	c3                   	ret    
  401819:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401820:	83 f8 40             	cmp    eax,0x40
  401823:	74 d0                	je     4017f5 <___write_memory.part.0+0x45>
  401825:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  401829:	8d 6c 24 20          	lea    ebp,[esp+0x20]
  40182d:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401831:	c7 44 24 08 40 00 00 	mov    DWORD PTR [esp+0x8],0x40
  401838:	00 
  401839:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  40183d:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401841:	89 04 24             	mov    DWORD PTR [esp],eax
  401844:	e8 bf 05 00 00       	call   401e08 <_VirtualProtect@16>
  401849:	83 ec 10             	sub    esp,0x10
  40184c:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  401850:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
  401854:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
  401858:	89 1c 24             	mov    DWORD PTR [esp],ebx
  40185b:	83 f8 40             	cmp    eax,0x40
  40185e:	0f 95 44 24 1e       	setne  BYTE PTR [esp+0x1e]
  401863:	83 f8 04             	cmp    eax,0x4
  401866:	0f 95 44 24 1f       	setne  BYTE PTR [esp+0x1f]
  40186b:	e8 58 05 00 00       	call   401dc8 <_memcpy>
  401870:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  401875:	74 8e                	je     401805 <___write_memory.part.0+0x55>
  401877:	80 7c 24 1e 00       	cmp    BYTE PTR [esp+0x1e],0x0
  40187c:	74 87                	je     401805 <___write_memory.part.0+0x55>
  40187e:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401882:	89 6c 24 0c          	mov    DWORD PTR [esp+0xc],ebp
  401886:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  40188a:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  40188e:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401892:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401896:	89 04 24             	mov    DWORD PTR [esp],eax
  401899:	e8 6a 05 00 00       	call   401e08 <_VirtualProtect@16>
  40189e:	83 ec 10             	sub    esp,0x10
  4018a1:	e9 5f ff ff ff       	jmp    401805 <___write_memory.part.0+0x55>
  4018a6:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  4018aa:	c7 44 24 04 1c 00 00 	mov    DWORD PTR [esp+0x4],0x1c
  4018b1:	00 
  4018b2:	c7 04 24 bc 32 40 00 	mov    DWORD PTR [esp],0x4032bc
  4018b9:	e8 92 fe ff ff       	call   401750 <___report_error>
  4018be:	66 90                	xchg   ax,ax

004018c0 <__pei386_runtime_relocator>:
  4018c0:	a1 20 50 40 00       	mov    eax,ds:0x405020
  4018c5:	85 c0                	test   eax,eax
  4018c7:	74 07                	je     4018d0 <__pei386_runtime_relocator+0x10>
  4018c9:	c3                   	ret    
  4018ca:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  4018d0:	b8 a0 33 40 00       	mov    eax,0x4033a0
  4018d5:	2d a0 33 40 00       	sub    eax,0x4033a0
  4018da:	83 f8 07             	cmp    eax,0x7
  4018dd:	c7 05 20 50 40 00 01 	mov    DWORD PTR ds:0x405020,0x1
  4018e4:	00 00 00 
  4018e7:	7e e0                	jle    4018c9 <__pei386_runtime_relocator+0x9>
  4018e9:	83 ec 2c             	sub    esp,0x2c
  4018ec:	83 f8 0b             	cmp    eax,0xb
  4018ef:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  4018f3:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  4018f7:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  4018fb:	0f 8e df 00 00 00    	jle    4019e0 <__pei386_runtime_relocator+0x120>
  401901:	8b 35 a0 33 40 00    	mov    esi,DWORD PTR ds:0x4033a0
  401907:	85 f6                	test   esi,esi
  401909:	0f 85 85 00 00 00    	jne    401994 <__pei386_runtime_relocator+0xd4>
  40190f:	8b 1d a4 33 40 00    	mov    ebx,DWORD PTR ds:0x4033a4
  401915:	85 db                	test   ebx,ebx
  401917:	75 7b                	jne    401994 <__pei386_runtime_relocator+0xd4>
  401919:	8b 0d a8 33 40 00    	mov    ecx,DWORD PTR ds:0x4033a8
  40191f:	bb ac 33 40 00       	mov    ebx,0x4033ac
  401924:	85 c9                	test   ecx,ecx
  401926:	0f 84 b9 00 00 00    	je     4019e5 <__pei386_runtime_relocator+0x125>
  40192c:	bb a0 33 40 00       	mov    ebx,0x4033a0
  401931:	8b 43 08             	mov    eax,DWORD PTR [ebx+0x8]
  401934:	83 f8 01             	cmp    eax,0x1
  401937:	0f 85 47 01 00 00    	jne    401a84 <__pei386_runtime_relocator+0x1c4>
  40193d:	83 c3 0c             	add    ebx,0xc
  401940:	81 fb a0 33 40 00    	cmp    ebx,0x4033a0
  401946:	0f 83 83 00 00 00    	jae    4019cf <__pei386_runtime_relocator+0x10f>
  40194c:	0f b6 53 08          	movzx  edx,BYTE PTR [ebx+0x8]
  401950:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  401953:	8b 0b                	mov    ecx,DWORD PTR [ebx]
  401955:	83 fa 10             	cmp    edx,0x10
  401958:	8d 86 00 00 40 00    	lea    eax,[esi+0x400000]
  40195e:	8b b9 00 00 40 00    	mov    edi,DWORD PTR [ecx+0x400000]
  401964:	0f 84 8e 00 00 00    	je     4019f8 <__pei386_runtime_relocator+0x138>
  40196a:	83 fa 20             	cmp    edx,0x20
  40196d:	0f 84 f0 00 00 00    	je     401a63 <__pei386_runtime_relocator+0x1a3>
  401973:	83 fa 08             	cmp    edx,0x8
  401976:	0f 84 b4 00 00 00    	je     401a30 <__pei386_runtime_relocator+0x170>
  40197c:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  401980:	c7 04 24 24 33 40 00 	mov    DWORD PTR [esp],0x403324
  401987:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  40198e:	00 
  40198f:	e8 bc fd ff ff       	call   401750 <___report_error>
  401994:	bb a0 33 40 00       	mov    ebx,0x4033a0
  401999:	81 fb a0 33 40 00    	cmp    ebx,0x4033a0
  40199f:	73 2e                	jae    4019cf <__pei386_runtime_relocator+0x10f>
  4019a1:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  4019a4:	b9 04 00 00 00       	mov    ecx,0x4
  4019a9:	8d 82 00 00 40 00    	lea    eax,[edx+0x400000]
  4019af:	8b 92 00 00 40 00    	mov    edx,DWORD PTR [edx+0x400000]
  4019b5:	03 13                	add    edx,DWORD PTR [ebx]
  4019b7:	83 c3 08             	add    ebx,0x8
  4019ba:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  4019be:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  4019c2:	e8 e9 fd ff ff       	call   4017b0 <___write_memory.part.0>
  4019c7:	81 fb a0 33 40 00    	cmp    ebx,0x4033a0
  4019cd:	72 d2                	jb     4019a1 <__pei386_runtime_relocator+0xe1>
  4019cf:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  4019d3:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  4019d7:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  4019db:	83 c4 2c             	add    esp,0x2c
  4019de:	c3                   	ret    
  4019df:	90                   	nop
  4019e0:	bb a0 33 40 00       	mov    ebx,0x4033a0
  4019e5:	8b 13                	mov    edx,DWORD PTR [ebx]
  4019e7:	85 d2                	test   edx,edx
  4019e9:	75 ae                	jne    401999 <__pei386_runtime_relocator+0xd9>
  4019eb:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  4019ee:	85 c0                	test   eax,eax
  4019f0:	0f 84 3b ff ff ff    	je     401931 <__pei386_runtime_relocator+0x71>
  4019f6:	eb a1                	jmp    401999 <__pei386_runtime_relocator+0xd9>
  4019f8:	0f b7 b6 00 00 40 00 	movzx  esi,WORD PTR [esi+0x400000]
  4019ff:	66 85 f6             	test   si,si
  401a02:	0f b7 d6             	movzx  edx,si
  401a05:	79 06                	jns    401a0d <__pei386_runtime_relocator+0x14d>
  401a07:	81 ca 00 00 ff ff    	or     edx,0xffff0000
  401a0d:	29 ca                	sub    edx,ecx
  401a0f:	b9 02 00 00 00       	mov    ecx,0x2
  401a14:	81 ea 00 00 40 00    	sub    edx,0x400000
  401a1a:	01 fa                	add    edx,edi
  401a1c:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  401a20:	8d 54 24 18          	lea    edx,[esp+0x18]
  401a24:	e8 87 fd ff ff       	call   4017b0 <___write_memory.part.0>
  401a29:	e9 0f ff ff ff       	jmp    40193d <__pei386_runtime_relocator+0x7d>
  401a2e:	66 90                	xchg   ax,ax
  401a30:	0f b6 10             	movzx  edx,BYTE PTR [eax]
  401a33:	84 d2                	test   dl,dl
  401a35:	0f b6 f2             	movzx  esi,dl
  401a38:	79 06                	jns    401a40 <__pei386_runtime_relocator+0x180>
  401a3a:	81 ce 00 ff ff ff    	or     esi,0xffffff00
  401a40:	89 f2                	mov    edx,esi
  401a42:	81 ea 00 00 40 00    	sub    edx,0x400000
  401a48:	29 ca                	sub    edx,ecx
  401a4a:	b9 01 00 00 00       	mov    ecx,0x1
  401a4f:	01 fa                	add    edx,edi
  401a51:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  401a55:	8d 54 24 18          	lea    edx,[esp+0x18]
  401a59:	e8 52 fd ff ff       	call   4017b0 <___write_memory.part.0>
  401a5e:	e9 da fe ff ff       	jmp    40193d <__pei386_runtime_relocator+0x7d>
  401a63:	81 c1 00 00 40 00    	add    ecx,0x400000
  401a69:	29 cf                	sub    edi,ecx
  401a6b:	b9 04 00 00 00       	mov    ecx,0x4
  401a70:	03 38                	add    edi,DWORD PTR [eax]
  401a72:	8d 54 24 18          	lea    edx,[esp+0x18]
  401a76:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  401a7a:	e8 31 fd ff ff       	call   4017b0 <___write_memory.part.0>
  401a7f:	e9 b9 fe ff ff       	jmp    40193d <__pei386_runtime_relocator+0x7d>
  401a84:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  401a88:	c7 04 24 f0 32 40 00 	mov    DWORD PTR [esp],0x4032f0
  401a8f:	e8 bc fc ff ff       	call   401750 <___report_error>
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

00401aa0 <___do_global_dtors>:
  401aa0:	a1 08 20 40 00       	mov    eax,ds:0x402008
  401aa5:	8b 00                	mov    eax,DWORD PTR [eax]
  401aa7:	85 c0                	test   eax,eax
  401aa9:	74 1f                	je     401aca <___do_global_dtors+0x2a>
  401aab:	83 ec 0c             	sub    esp,0xc
  401aae:	66 90                	xchg   ax,ax
  401ab0:	ff d0                	call   eax
  401ab2:	a1 08 20 40 00       	mov    eax,ds:0x402008
  401ab7:	8d 50 04             	lea    edx,[eax+0x4]
  401aba:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
  401abd:	89 15 08 20 40 00    	mov    DWORD PTR ds:0x402008,edx
  401ac3:	85 c0                	test   eax,eax
  401ac5:	75 e9                	jne    401ab0 <___do_global_dtors+0x10>
  401ac7:	83 c4 0c             	add    esp,0xc
  401aca:	f3 c3                	repz ret 
  401acc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401ad0 <___do_global_ctors>:
  401ad0:	53                   	push   ebx
  401ad1:	83 ec 18             	sub    esp,0x18
  401ad4:	8b 1d 50 1e 40 00    	mov    ebx,DWORD PTR ds:0x401e50
  401ada:	83 fb ff             	cmp    ebx,0xffffffff
  401add:	74 24                	je     401b03 <___do_global_ctors+0x33>
  401adf:	85 db                	test   ebx,ebx
  401ae1:	74 0f                	je     401af2 <___do_global_ctors+0x22>
  401ae3:	ff 14 9d 50 1e 40 00 	call   DWORD PTR [ebx*4+0x401e50]
  401aea:	83 eb 01             	sub    ebx,0x1
  401aed:	8d 76 00             	lea    esi,[esi+0x0]
  401af0:	75 f1                	jne    401ae3 <___do_global_ctors+0x13>
  401af2:	c7 04 24 a0 1a 40 00 	mov    DWORD PTR [esp],0x401aa0
  401af9:	e8 c2 f7 ff ff       	call   4012c0 <_atexit>
  401afe:	83 c4 18             	add    esp,0x18
  401b01:	5b                   	pop    ebx
  401b02:	c3                   	ret    
  401b03:	31 db                	xor    ebx,ebx
  401b05:	eb 02                	jmp    401b09 <___do_global_ctors+0x39>
  401b07:	89 c3                	mov    ebx,eax
  401b09:	8d 43 01             	lea    eax,[ebx+0x1]
  401b0c:	8b 14 85 50 1e 40 00 	mov    edx,DWORD PTR [eax*4+0x401e50]
  401b13:	85 d2                	test   edx,edx
  401b15:	75 f0                	jne    401b07 <___do_global_ctors+0x37>
  401b17:	eb c6                	jmp    401adf <___do_global_ctors+0xf>
  401b19:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00401b20 <___main>:
  401b20:	8b 0d 24 50 40 00    	mov    ecx,DWORD PTR ds:0x405024
  401b26:	85 c9                	test   ecx,ecx
  401b28:	74 06                	je     401b30 <___main+0x10>
  401b2a:	f3 c3                	repz ret 
  401b2c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401b30:	c7 05 24 50 40 00 01 	mov    DWORD PTR ds:0x405024,0x1
  401b37:	00 00 00 
  401b3a:	eb 94                	jmp    401ad0 <___do_global_ctors>
  401b3c:	90                   	nop
  401b3d:	90                   	nop
  401b3e:	90                   	nop
  401b3f:	90                   	nop

00401b40 <___mingwthr_run_key_dtors.part.0>:
  401b40:	56                   	push   esi
  401b41:	53                   	push   ebx
  401b42:	83 ec 14             	sub    esp,0x14
  401b45:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401b4c:	e8 bf 02 00 00       	call   401e10 <_EnterCriticalSection@4>
  401b51:	8b 1d 48 50 40 00    	mov    ebx,DWORD PTR ds:0x405048
  401b57:	83 ec 04             	sub    esp,0x4
  401b5a:	85 db                	test   ebx,ebx
  401b5c:	74 2d                	je     401b8b <___mingwthr_run_key_dtors.part.0+0x4b>
  401b5e:	66 90                	xchg   ax,ax
  401b60:	8b 03                	mov    eax,DWORD PTR [ebx]
  401b62:	89 04 24             	mov    DWORD PTR [esp],eax
  401b65:	e8 ae 02 00 00       	call   401e18 <_TlsGetValue@4>
  401b6a:	83 ec 04             	sub    esp,0x4
  401b6d:	89 c6                	mov    esi,eax
  401b6f:	e8 ac 02 00 00       	call   401e20 <_GetLastError@0>
  401b74:	85 c0                	test   eax,eax
  401b76:	75 0c                	jne    401b84 <___mingwthr_run_key_dtors.part.0+0x44>
  401b78:	85 f6                	test   esi,esi
  401b7a:	74 08                	je     401b84 <___mingwthr_run_key_dtors.part.0+0x44>
  401b7c:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  401b7f:	89 34 24             	mov    DWORD PTR [esp],esi
  401b82:	ff d0                	call   eax
  401b84:	8b 5b 08             	mov    ebx,DWORD PTR [ebx+0x8]
  401b87:	85 db                	test   ebx,ebx
  401b89:	75 d5                	jne    401b60 <___mingwthr_run_key_dtors.part.0+0x20>
  401b8b:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401b92:	e8 91 02 00 00       	call   401e28 <_LeaveCriticalSection@4>
  401b97:	83 ec 04             	sub    esp,0x4
  401b9a:	83 c4 14             	add    esp,0x14
  401b9d:	5b                   	pop    ebx
  401b9e:	5e                   	pop    esi
  401b9f:	c3                   	ret    

00401ba0 <____w64_mingwthr_add_key_dtor>:
  401ba0:	83 ec 1c             	sub    esp,0x1c
  401ba3:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401ba8:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  401bac:	31 f6                	xor    esi,esi
  401bae:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  401bb2:	85 c0                	test   eax,eax
  401bb4:	75 0e                	jne    401bc4 <____w64_mingwthr_add_key_dtor+0x24>
  401bb6:	89 f0                	mov    eax,esi
  401bb8:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  401bbc:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  401bc0:	83 c4 1c             	add    esp,0x1c
  401bc3:	c3                   	ret    
  401bc4:	c7 44 24 04 0c 00 00 	mov    DWORD PTR [esp+0x4],0xc
  401bcb:	00 
  401bcc:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
  401bd3:	e8 f8 01 00 00       	call   401dd0 <_calloc>
  401bd8:	85 c0                	test   eax,eax
  401bda:	89 c3                	mov    ebx,eax
  401bdc:	74 47                	je     401c25 <____w64_mingwthr_add_key_dtor+0x85>
  401bde:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  401be2:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401be9:	89 03                	mov    DWORD PTR [ebx],eax
  401beb:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401bef:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  401bf2:	e8 19 02 00 00       	call   401e10 <_EnterCriticalSection@4>
  401bf7:	a1 48 50 40 00       	mov    eax,ds:0x405048
  401bfc:	89 1d 48 50 40 00    	mov    DWORD PTR ds:0x405048,ebx
  401c02:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  401c05:	83 ec 04             	sub    esp,0x4
  401c08:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401c0f:	e8 14 02 00 00       	call   401e28 <_LeaveCriticalSection@4>
  401c14:	89 f0                	mov    eax,esi
  401c16:	83 ec 04             	sub    esp,0x4
  401c19:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  401c1d:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  401c21:	83 c4 1c             	add    esp,0x1c
  401c24:	c3                   	ret    
  401c25:	be ff ff ff ff       	mov    esi,0xffffffff
  401c2a:	eb 8a                	jmp    401bb6 <____w64_mingwthr_add_key_dtor+0x16>
  401c2c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00401c30 <____w64_mingwthr_remove_key_dtor>:
  401c30:	53                   	push   ebx
  401c31:	83 ec 18             	sub    esp,0x18
  401c34:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401c39:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  401c3d:	85 c0                	test   eax,eax
  401c3f:	75 07                	jne    401c48 <____w64_mingwthr_remove_key_dtor+0x18>
  401c41:	83 c4 18             	add    esp,0x18
  401c44:	31 c0                	xor    eax,eax
  401c46:	5b                   	pop    ebx
  401c47:	c3                   	ret    
  401c48:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401c4f:	e8 bc 01 00 00       	call   401e10 <_EnterCriticalSection@4>
  401c54:	8b 15 48 50 40 00    	mov    edx,DWORD PTR ds:0x405048
  401c5a:	83 ec 04             	sub    esp,0x4
  401c5d:	85 d2                	test   edx,edx
  401c5f:	74 1e                	je     401c7f <____w64_mingwthr_remove_key_dtor+0x4f>
  401c61:	8b 02                	mov    eax,DWORD PTR [edx]
  401c63:	39 d8                	cmp    eax,ebx
  401c65:	75 11                	jne    401c78 <____w64_mingwthr_remove_key_dtor+0x48>
  401c67:	eb 4b                	jmp    401cb4 <____w64_mingwthr_remove_key_dtor+0x84>
  401c69:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  401c70:	8b 08                	mov    ecx,DWORD PTR [eax]
  401c72:	39 d9                	cmp    ecx,ebx
  401c74:	74 1f                	je     401c95 <____w64_mingwthr_remove_key_dtor+0x65>
  401c76:	89 c2                	mov    edx,eax
  401c78:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401c7b:	85 c0                	test   eax,eax
  401c7d:	75 f1                	jne    401c70 <____w64_mingwthr_remove_key_dtor+0x40>
  401c7f:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401c86:	e8 9d 01 00 00       	call   401e28 <_LeaveCriticalSection@4>
  401c8b:	83 ec 04             	sub    esp,0x4
  401c8e:	83 c4 18             	add    esp,0x18
  401c91:	31 c0                	xor    eax,eax
  401c93:	5b                   	pop    ebx
  401c94:	c3                   	ret    
  401c95:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  401c98:	89 4a 08             	mov    DWORD PTR [edx+0x8],ecx
  401c9b:	89 04 24             	mov    DWORD PTR [esp],eax
  401c9e:	e8 35 01 00 00       	call   401dd8 <_free>
  401ca3:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401caa:	e8 79 01 00 00       	call   401e28 <_LeaveCriticalSection@4>
  401caf:	83 ec 04             	sub    esp,0x4
  401cb2:	eb da                	jmp    401c8e <____w64_mingwthr_remove_key_dtor+0x5e>
  401cb4:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  401cb7:	a3 48 50 40 00       	mov    ds:0x405048,eax
  401cbc:	89 d0                	mov    eax,edx
  401cbe:	eb db                	jmp    401c9b <____w64_mingwthr_remove_key_dtor+0x6b>

00401cc0 <___mingw_TLScallback>:
  401cc0:	83 ec 1c             	sub    esp,0x1c
  401cc3:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  401cc7:	83 f8 01             	cmp    eax,0x1
  401cca:	74 44                	je     401d10 <___mingw_TLScallback+0x50>
  401ccc:	72 12                	jb     401ce0 <___mingw_TLScallback+0x20>
  401cce:	83 f8 03             	cmp    eax,0x3
  401cd1:	74 5d                	je     401d30 <___mingw_TLScallback+0x70>
  401cd3:	b8 01 00 00 00       	mov    eax,0x1
  401cd8:	83 c4 1c             	add    esp,0x1c
  401cdb:	c3                   	ret    
  401cdc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401ce0:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401ce5:	85 c0                	test   eax,eax
  401ce7:	75 68                	jne    401d51 <___mingw_TLScallback+0x91>
  401ce9:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401cee:	83 f8 01             	cmp    eax,0x1
  401cf1:	75 e0                	jne    401cd3 <___mingw_TLScallback+0x13>
  401cf3:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401cfa:	c7 05 2c 50 40 00 00 	mov    DWORD PTR ds:0x40502c,0x0
  401d01:	00 00 00 
  401d04:	e8 27 01 00 00       	call   401e30 <_DeleteCriticalSection@4>
  401d09:	83 ec 04             	sub    esp,0x4
  401d0c:	eb c5                	jmp    401cd3 <___mingw_TLScallback+0x13>
  401d0e:	66 90                	xchg   ax,ax
  401d10:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401d15:	85 c0                	test   eax,eax
  401d17:	74 27                	je     401d40 <___mingw_TLScallback+0x80>
  401d19:	c7 05 2c 50 40 00 01 	mov    DWORD PTR ds:0x40502c,0x1
  401d20:	00 00 00 
  401d23:	b8 01 00 00 00       	mov    eax,0x1
  401d28:	83 c4 1c             	add    esp,0x1c
  401d2b:	c3                   	ret    
  401d2c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  401d30:	a1 2c 50 40 00       	mov    eax,ds:0x40502c
  401d35:	85 c0                	test   eax,eax
  401d37:	74 9a                	je     401cd3 <___mingw_TLScallback+0x13>
  401d39:	e8 02 fe ff ff       	call   401b40 <___mingwthr_run_key_dtors.part.0>
  401d3e:	eb 93                	jmp    401cd3 <___mingw_TLScallback+0x13>
  401d40:	c7 04 24 30 50 40 00 	mov    DWORD PTR [esp],0x405030
  401d47:	e8 ec 00 00 00       	call   401e38 <_InitializeCriticalSection@4>
  401d4c:	83 ec 04             	sub    esp,0x4
  401d4f:	eb c8                	jmp    401d19 <___mingw_TLScallback+0x59>
  401d51:	e8 ea fd ff ff       	call   401b40 <___mingwthr_run_key_dtors.part.0>
  401d56:	eb 91                	jmp    401ce9 <___mingw_TLScallback+0x29>
  401d58:	90                   	nop
  401d59:	90                   	nop
  401d5a:	90                   	nop
  401d5b:	90                   	nop
  401d5c:	90                   	nop
  401d5d:	90                   	nop
  401d5e:	90                   	nop
  401d5f:	90                   	nop

00401d60 <___getmainargs>:
  401d60:	ff 25 f8 60 40 00    	jmp    DWORD PTR ds:0x4060f8
  401d66:	90                   	nop
  401d67:	90                   	nop

00401d68 <__setmode>:
  401d68:	ff 25 14 61 40 00    	jmp    DWORD PTR ds:0x406114
  401d6e:	90                   	nop
  401d6f:	90                   	nop

00401d70 <___p__fmode>:
  401d70:	ff 25 00 61 40 00    	jmp    DWORD PTR ds:0x406100
  401d76:	90                   	nop
  401d77:	90                   	nop

00401d78 <___p__environ>:
  401d78:	ff 25 fc 60 40 00    	jmp    DWORD PTR ds:0x4060fc
  401d7e:	90                   	nop
  401d7f:	90                   	nop

00401d80 <__cexit>:
  401d80:	ff 25 08 61 40 00    	jmp    DWORD PTR ds:0x406108
  401d86:	90                   	nop
  401d87:	90                   	nop

00401d88 <_signal>:
  401d88:	ff 25 3c 61 40 00    	jmp    DWORD PTR ds:0x40613c
  401d8e:	90                   	nop
  401d8f:	90                   	nop

00401d90 <_puts>:
  401d90:	ff 25 34 61 40 00    	jmp    DWORD PTR ds:0x406134
  401d96:	90                   	nop
  401d97:	90                   	nop

00401d98 <_printf>:
  401d98:	ff 25 30 61 40 00    	jmp    DWORD PTR ds:0x406130
  401d9e:	90                   	nop
  401d9f:	90                   	nop

00401da0 <_scanf>:
  401da0:	ff 25 38 61 40 00    	jmp    DWORD PTR ds:0x406138
  401da6:	90                   	nop
  401da7:	90                   	nop

00401da8 <_strlen>:
  401da8:	ff 25 40 61 40 00    	jmp    DWORD PTR ds:0x406140
  401dae:	90                   	nop
  401daf:	90                   	nop

00401db0 <_fwrite>:
  401db0:	ff 25 28 61 40 00    	jmp    DWORD PTR ds:0x406128
  401db6:	90                   	nop
  401db7:	90                   	nop

00401db8 <_vfprintf>:
  401db8:	ff 25 44 61 40 00    	jmp    DWORD PTR ds:0x406144
  401dbe:	90                   	nop
  401dbf:	90                   	nop

00401dc0 <_abort>:
  401dc0:	ff 25 18 61 40 00    	jmp    DWORD PTR ds:0x406118
  401dc6:	90                   	nop
  401dc7:	90                   	nop

00401dc8 <_memcpy>:
  401dc8:	ff 25 2c 61 40 00    	jmp    DWORD PTR ds:0x40612c
  401dce:	90                   	nop
  401dcf:	90                   	nop

00401dd0 <_calloc>:
  401dd0:	ff 25 20 61 40 00    	jmp    DWORD PTR ds:0x406120
  401dd6:	90                   	nop
  401dd7:	90                   	nop

00401dd8 <_free>:
  401dd8:	ff 25 24 61 40 00    	jmp    DWORD PTR ds:0x406124
  401dde:	90                   	nop
  401ddf:	90                   	nop

00401de0 <_SetUnhandledExceptionFilter@4>:
  401de0:	ff 25 e4 60 40 00    	jmp    DWORD PTR ds:0x4060e4
  401de6:	90                   	nop
  401de7:	90                   	nop

00401de8 <_ExitProcess@4>:
  401de8:	ff 25 cc 60 40 00    	jmp    DWORD PTR ds:0x4060cc
  401dee:	90                   	nop
  401def:	90                   	nop

00401df0 <_GetModuleHandleA@4>:
  401df0:	ff 25 d4 60 40 00    	jmp    DWORD PTR ds:0x4060d4
  401df6:	90                   	nop
  401df7:	90                   	nop

00401df8 <_GetProcAddress@8>:
  401df8:	ff 25 d8 60 40 00    	jmp    DWORD PTR ds:0x4060d8
  401dfe:	90                   	nop
  401dff:	90                   	nop

00401e00 <_VirtualQuery@12>:
  401e00:	ff 25 f0 60 40 00    	jmp    DWORD PTR ds:0x4060f0
  401e06:	90                   	nop
  401e07:	90                   	nop

00401e08 <_VirtualProtect@16>:
  401e08:	ff 25 ec 60 40 00    	jmp    DWORD PTR ds:0x4060ec
  401e0e:	90                   	nop
  401e0f:	90                   	nop

00401e10 <_EnterCriticalSection@4>:
  401e10:	ff 25 c8 60 40 00    	jmp    DWORD PTR ds:0x4060c8
  401e16:	90                   	nop
  401e17:	90                   	nop

00401e18 <_TlsGetValue@4>:
  401e18:	ff 25 e8 60 40 00    	jmp    DWORD PTR ds:0x4060e8
  401e1e:	90                   	nop
  401e1f:	90                   	nop

00401e20 <_GetLastError@0>:
  401e20:	ff 25 d0 60 40 00    	jmp    DWORD PTR ds:0x4060d0
  401e26:	90                   	nop
  401e27:	90                   	nop

00401e28 <_LeaveCriticalSection@4>:
  401e28:	ff 25 e0 60 40 00    	jmp    DWORD PTR ds:0x4060e0
  401e2e:	90                   	nop
  401e2f:	90                   	nop

00401e30 <_DeleteCriticalSection@4>:
  401e30:	ff 25 c4 60 40 00    	jmp    DWORD PTR ds:0x4060c4
  401e36:	90                   	nop
  401e37:	90                   	nop

00401e38 <_InitializeCriticalSection@4>:
  401e38:	ff 25 dc 60 40 00    	jmp    DWORD PTR ds:0x4060dc
  401e3e:	90                   	nop
  401e3f:	90                   	nop

00401e40 <_register_frame_ctor>:
  401e40:	55                   	push   ebp
  401e41:	89 e5                	mov    ebp,esp
  401e43:	5d                   	pop    ebp
  401e44:	e9 97 f4 ff ff       	jmp    4012e0 <___gcc_register_frame>
  401e49:	90                   	nop
  401e4a:	90                   	nop
  401e4b:	90                   	nop
  401e4c:	90                   	nop
  401e4d:	90                   	nop
  401e4e:	90                   	nop
  401e4f:	90                   	nop

00401e50 <__CTOR_LIST__>:
  401e50:	ff                   	(bad)  
  401e51:	ff                   	(bad)  
  401e52:	ff                   	(bad)  
  401e53:	ff 40 1e             	inc    DWORD PTR [eax+0x1e]

00401e54 <.ctors.65535>:
  401e54:	40                   	inc    eax
  401e55:	1e                   	push   ds
  401e56:	40                   	inc    eax
  401e57:	00 00                	add    BYTE PTR [eax],al
  401e59:	00 00                	add    BYTE PTR [eax],al
	...

00401e5c <__DTOR_LIST__>:
  401e5c:	ff                   	(bad)  
  401e5d:	ff                   	(bad)  
  401e5e:	ff                   	(bad)  
  401e5f:	ff 00                	inc    DWORD PTR [eax]
  401e61:	00 00                	add    BYTE PTR [eax],al
	...
