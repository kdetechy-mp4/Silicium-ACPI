// CreatorID=MSFT	CreatorRev=5.0.0
// FileLength=90393	FileChkSum=0x7d

DefinitionBlock("DSDT.aml", "DSDT", 0x02, "QCOMM ", "SDM8250 ", 0x00000003)
{
    Scope(\_SB_)
    {
        Name(PSUB, "MTP08250")
        Name(SOID, 0xffffffff)
        Name(STOR, 0xabcabcab)
        Name(SIDS, "899800000000000")
        Name(SIDV, 0xffffffff)
        Name(SVMJ, 0xffff)
        Name(SVMI, 0xffff)
        Name(SDFE, 0xffff)
        Name(SFES, "899800000000000")
        Name(SIDM, 0xfffffffff)
        Name(PUS3, 0xffffffff)
        Name(SIDT, 0xffffffff)
        Name(SJTG, 0xffffffff)
        Name(SOSN, 0xaaaaaaaabbbbbbbb)
        Name(PLST, 0xffffffff)
        Name(EMUL, 0xffffffff)
        Name(SOSI, 0xdeadbeefffffffff)
        Name(PRP0, 0xffffffff)
        Name(PRP1, 0xffffffff)
        Name(PRP2, 0xffffffff)
        Device(AUDS)
        {
            Name(_HID, "QCOM25D2")
            Name(_UID, Zero)
        }
        Device(UFS0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(STOR, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Name(_HID, "QCOM24A5")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.EMUL, EMUL)
            Name(_UID, Zero)
            Name(_CCA, One)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xd8, 0x01, 0x00, 0xc0, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x29, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Device(DEV0)
            {
                Method(_ADR, 0x0, NotSerialized)
                {
                    Return(0x8)
                }
                Method(_RMV, 0x0, NotSerialized)
                {
                    Return(Zero)
                }
            }
        }
        Device(SDC2)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.GIO0
            })
            Name(_HID, "QCOM2466")
            Name(_UID, One)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x5d)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x80, 0x08, 0x00, 0x10, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xec, 0x00, 0x00, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x1d, 0x00, 0x01, 0x00, 0x00, 0x88, 0x13, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x01, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x01, 0x01, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x4d, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_DIS, 0x0, NotSerialized)
            {
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(ABD_)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM0527")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            OperationRegion(ROP1, GenericSerialBus, Zero, 0x100)
            Name(AVBL, Zero)
            Method(_REG, 0x2, NotSerialized)
            {
                If(LEqual(Arg0, 0x9))
                {
                    Store(Arg1, AVBL)
                }
            }
        }
        Name(ESNL, 0x14)
        Name(DBFL, 0x17)
        Device(PMIC)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.SPMI
            })
            Name(_HID, "QCOM252B")
            Name(_CID, "PNP0CA3")
            Alias(\_SB_.PSUB, _SUB)
            Method(PMCF, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x5)
                {
                    0x4,
                    Package(0x2)
                    {
                        Zero,
                        One
                    },
                    Package(0x2)
                    {
                        0x2,
                        0x3
                    },
                    Package(0x2)
                    {
                        0x4,
                        0x5
                    },
                    Package(0x2)
                    {
                        0x6,
                        0x7
                    }
                })
                Return(CFG0)
            }
        }
        Device(PM01)
        {
            Name(_HID, "QCOM252D")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0x01, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x40, 0x8f, 0x24, 0x4f, 0xe2, 0xd5, 0x9f, 0x49, 0x83, 0x4c, 0x27, 0x75,
	0x8e, 0xa1, 0xcd, 0x3f
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg2, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                Return(Buffer(One)
                                {
	0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Return(Package(0x2)
                                    {
                                        Zero,
                                        One
                                    })
                                }
                                Else
                                {
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Buffer(One)
                        {
	0x00
                        })
                    }
                    Break
                }
            }
        }
        Device(PMAP)
        {
            Name(_HID, "QCOM252C")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PMIC,
                \_SB_.ABD_,
                \_SB_.SCM0
            })
            Method(GEPT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x4)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateWordField(BUFF, 0x2, DATA)
                Store(0x2, DATA)
                Return(DATA)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(PRTC)
        {
            Name(_HID, "ACPI000E")
            Name(_DEP, Package(0x1)
            {
                "\\_SB.PMAP"
            })
            Method(_GCP, 0x0, NotSerialized)
            {
                Return(0x4)
            }
            Field(\_SB_.ABD_.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection(
                    I2CSerialBus(0x2, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )
                ),
                AccessAs(BufferAcc, AttribRawBytes(24)),
                FLD0, 192
            }
            Method(_GRT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x1a)
                {
                })
                CreateField(BUFF, 0x10, 0x80, TME1)
                CreateField(BUFF, 0x90, 0x20, ACT1)
                CreateField(BUFF, 0xb0, 0x20, ACW1)
                Store(FLD0, BUFF)
                Return(TME1)
            }
            Method(_SRT, 0x1, NotSerialized)
            {
                Name(BUFF, Buffer(0x32)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateField(BUFF, 0x10, 0x80, TME1)
                CreateField(BUFF, 0x90, 0x20, ACT1)
                CreateField(BUFF, 0xb0, 0x20, ACW1)
                Store(Zero, ACT1)
                Store(Arg0, TME1)
                Store(Zero, ACW1)
                Store(Store(BUFF, FLD0), BUFF)
                If(LNot(LEqual(STAT, Zero)))
                {
                    Return(One)
                }
                Return(Zero)
            }
        }
        Device(PEXT)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.SPMI,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM25F8")
            Alias(\_SB_.PSUB, _SUB)
        }
        Name(BFCC, 0x4454)
        Name(PCT1, 0x5)
        Name(PCT2, 0x9)
        Name(CUST, "8250_ALIOTH")
        Name(VNOM, 0xed8)
        Name(VLOW, 0xce4)
        Name(EMPT, 0xc80)
        Name(DCMA, 0x384)
        Name(BOCP, 0x1194)
        Name(BVLO, 0xbb8)
        Name(BLOP, 0x14)
        Name(BNOP, 0x16)
        Name(IFGD, 0x32)
        Name(VFGD, 0x32)
        Name(VDD1, 0x10fe)
        Name(FCC1, 0x834)
        Name(HCLI, Zero)
        Name(SCLI, 0xa)
        Name(SHLI, 0x2d)
        Name(HHLI, 0x37)
        Name(FVC1, 0x69)
        Name(CCC1, 0x3e8)
        Name(RID2, 0x3a98)
        Name(RID3, 0x222e0)
        Device(PMBT)
        {
            Name(_HID, "QCOM252E")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x2)
            {
                \_SB_.PMIC,
                \_SB_.ADC1
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x8e)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x48,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x50, 0x01,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xee, 0x00, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(BMNR, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x5)
                {
                    One,
                    Zero,
                    One,
                    Zero,
                    "CUST_PMIC"
                })
                Store(CUST, Index(CFG0, 0x4, ))
                Return(CFG0)
            }
            Method(BTIM, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x8)
                {
                    0x7530,
                    0x2710,
                    0x493e0,
                    0x1d4c0,
                    Zero,
                    Zero,
                    0x1ac7780,
                    Zero
                })
                Return(CFG0)
            }
            Method(BBAT, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0xd)
                {
                    One,
                    0x4c494f4e,
                    0xffffffff,
                    0xffffffff,
                    0xffffffff,
                    0xffffffff,
                    "QCOMBATT01",
                    "Qualcomm",
                    "QCOMBAT01_07012011",
                    "07012011",
                    0x13,
                    0x4,
                    0x7de
                })
                Multiply(PCT1, BFCC, Local0)
                Divide(Local0, 0x64, Local1, Local2)
                Multiply(PCT2, BFCC, Local0)
                Divide(Local0, 0x64, Local1, Local3)
                Store(BFCC, Index(CFG0, 0x2, ))
                Store(BFCC, Index(CFG0, 0x3, ))
                Store(Local2, Index(CFG0, 0x4, ))
                Store(Local3, Index(CFG0, 0x5, ))
                Return(CFG0)
            }
            Method(BPCH, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x3)
                {
                    0xbb8,
                    0xbb8,
                    0x5dc
                })
                Return(CFG0)
            }
            Method(BFCH, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x4)
                {
                    One,
                    0x5,
                    0x1388,
                    0x384
                })
                Return(CFG0)
            }
            Method(BCCC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x3)
                {
                    One,
                    Zero,
                    Zero
                })
                Return(CFG0)
            }
            Method(BRCH, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x2)
                {
                    0x64,
                    Zero
                })
                Return(CFG0)
            }
            Method(_BQI, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x1)
                {
                    Zero
                })
                Return(CFG0)
            }
            Method(BIRQ, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x4)
                {
                    "VbatLow",
                    "BattMissing",
                    "AiclDone",
                    "JeitaLimit"
                })
                Return(CFG0)
            }
            Method(BPLT, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x2f)
                {
                    0x400,
                    0xffffffff,
                    0xffffffff,
                    0xffffffff,
                    0xffffffff,
                    One,
                    0x32,
                    0x32,
                    0x1388,
                    0x8,
                    One,
                    0x50,
                    0xffffffec,
                    0x48,
                    0x64,
                    0x1e,
                    0x5,
                    0x6,
                    0x1f4,
                    0x7e,
                    0x190,
                    0xffffffff,
                    0x2ee,
                    One,
                    0x2,
                    0x32,
                    0xa,
                    One,
                    0xffffffec,
                    0xa,
                    0xa,
                    0xa,
                    0xa,
                    One,
                    0x96,
                    0x64,
                    0x5,
                    0xa,
                    0x2,
                    0x33,
                    0x2,
                    0xa,
                    Zero,
                    Zero,
                    0x46,
                    0x32,
                    0x3c
                })
                Store(VNOM, Index(CFG0, One, ))
                Store(VLOW, Index(CFG0, 0x2, ))
                Store(EMPT, Index(CFG0, 0x3, ))
                Store(DCMA, Index(CFG0, 0x4, ))
                Store(BOCP, Index(CFG0, 0x15, ))
                Store(IFGD, Index(CFG0, 0x19, ))
                Store(VFGD, Index(CFG0, 0x1a, ))
                Return(CFG0)
            }
            Method(BPTM, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x2)
                {
                    0x3a98,
                    Zero
                })
                Return(CFG0)
            }
            Name(BCT1, Package(0xa)
            {
                0x10fe,
                0x834,
                Zero,
                0xa,
                0x2d,
                0x37,
                0x69,
                Zero,
                Zero,
                0x3e8
            })
            Method(BJTA, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x3)
                {
                    0x2,
                    0x2,
                    Package(0xa)
                    {
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero
                    }
                })
                Store(VDD1, Index(\_SB_.PMBT.BCT1, Zero, ))
                Store(FCC1, Index(\_SB_.PMBT.BCT1, One, ))
                Store(HCLI, Index(\_SB_.PMBT.BCT1, 0x2, ))
                Store(SCLI, Index(\_SB_.PMBT.BCT1, 0x3, ))
                Store(SHLI, Index(\_SB_.PMBT.BCT1, 0x4, ))
                Store(HHLI, Index(\_SB_.PMBT.BCT1, 0x5, ))
                Store(FVC1, Index(\_SB_.PMBT.BCT1, 0x6, ))
                Store(CCC1, Index(\_SB_.PMBT.BCT1, 0x9, ))
                Store(\_SB_.PMBT.BCT1, Index(CFG0, 0x2, ))
                Return(CFG0)
            }
            Method(BAT1, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x5)
                {
                    Zero,
                    0xffffffec,
                    0x41,
                    Package(0x4)
                    {
                        Zero,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xa)
                    {
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        Zero
                    }
                })
                Store(\_SB_.PMBT.BCT1, Index(CFG0, 0x4, ))
                Return(CFG0)
            }
            Method(BEHC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x8)
                {
                    One,
                    0x8,
                    One,
                    Zero,
                    Zero,
                    0x2,
                    0x2,
                    0x4
                })
                Return(CFG0)
            }
            Method(CTMC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x7)
                {
                    0x7d0,
                    0x36b0,
                    0xffffffff,
                    0xffffffff,
                    0x3a980,
                    0x6ddd0,
                    One
                })
                Store(RID2, Index(CFG0, 0x2, ))
                Store(RID3, Index(CFG0, 0x3, ))
                Return(CFG0)
            }
            Method(BMPC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0xc)
                {
                    Zero,
                    One,
                    0x1b58,
                    0x3e8,
                    0x32,
                    0x3c,
                    0x1f4,
                    0x5a,
                    Zero,
                    0x46,
                    Zero,
                    Package(0x4)
                    {
                        0x5,
                        0x5,
                        0x78,
                        0x5
                    }
                })
                Return(CFG0)
            }
        }
        Device(PMBM)
        {
            Name(_HID, "QCOM252A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.PMBT
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BCL1)
        {
            Name(_HID, "QCOM2577")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x11a)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x08,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x09, 0x01,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0b, 0x01, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x00, 0x01, 0x00, 0x0b, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x10, 0x02, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00,
	0x01, 0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
	0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x11, 0x02, 0x5c, 0x5f, 0x53, 0x42,
	0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,
	0x00, 0x23, 0x00, 0x00, 0x00, 0x12, 0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e,
	0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00,
	0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00,
	0x23, 0x00, 0x00, 0x00, 0x13, 0x02, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50,
	0x4d, 0x30, 0x31, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Method(BCLQ, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x8)
                {
                    "PM3_BCLBIG_LVL0",
                    "PM3_BCLBIG_LVL1",
                    "PM3_BCLBIG_LVL2",
                    "PM3_BCLBIG_BAN",
                    "PM7_BCLBIG_LVL0",
                    "PM7_BCLBIG_LVL1",
                    "PM7_BCLBIG_LVL2",
                    "PM7_BCLBIG_BAN"
                })
                Return(CFG0)
            }
        }
        Device(PTCC)
        {
            Name(_HID, "QCOM257A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x183)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xfa,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0e, 0x01,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0d, 0x01, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0c, 0x01, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x00, 0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0b, 0x01, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00,
	0x01, 0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
	0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x5c, 0x5f, 0x53, 0x42,
	0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,
	0x00, 0x23, 0x00, 0x00, 0x00, 0x09, 0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e,
	0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00,
	0x19, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00,
	0x23, 0x00, 0x00, 0x00, 0x08, 0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50,
	0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0xda, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d,
	0x30, 0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,
	0x00, 0x00, 0xdf, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30,
	0x31, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00,
	0x00, 0xeb, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31,
	0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(PEP0)
        {
            Name(_HID, "QCOM2517")
            Name(_CID, "PNP0D80")
            Method(THTZ, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, 0x0)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, One))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg3, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                If(Arg2)
                                {
                                    Store(Arg1, \_SB_.TZ1_.TPSV)
                                    Notify(\_SB_.TZ1_, 0x81)
                                }
                                Return(\_SB_.TZ1_._PSV())
                            }
                            Else
                            {
                                If(LEqual(_T_1, 0x2))
                                {
                                    If(Arg2)
                                    {
                                        Store(Arg1, \_SB_.TZ1_.TTSP)
                                        Notify(\_SB_.TZ1_, 0x81)
                                    }
                                    Return(\_SB_.TZ1_._TSP())
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x3))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ1_.TTC1)
                                            Notify(\_SB_.TZ1_, 0x81)
                                        }
                                        Return(\_SB_.TZ1_._TC1())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x4))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ1_.TTC2)
                                                Notify(\_SB_.TZ1_, 0x81)
                                            }
                                            Return(\_SB_.TZ1_._TC2())
                                        }
                                        Else
                                        {
                                            Return(0xffff)
                                        }
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        If(LEqual(_T_0, 0x3))
                        {
                            While(One)
                            {
                                Name(_T_2, 0x0)
                                Store(ToInteger(Arg3, ), _T_2)
                                If(LEqual(_T_2, Zero))
                                {
                                    If(Arg2)
                                    {
                                        Store(Arg1, \_SB_.TZ3_.TPSV)
                                        Notify(\_SB_.TZ3_, 0x81)
                                    }
                                    Return(\_SB_.TZ3_._PSV())
                                }
                                Else
                                {
                                    If(LEqual(_T_2, 0x2))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ3_.TTSP)
                                            Notify(\_SB_.TZ3_, 0x81)
                                        }
                                        Return(\_SB_.TZ3_._TSP())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_2, 0x3))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ3_.TTC1)
                                                Notify(\_SB_.TZ3_, 0x81)
                                            }
                                            Return(\_SB_.TZ3_._TC1())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_2, 0x4))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ3_.TTC2)
                                                    Notify(\_SB_.TZ3_, 0x81)
                                                }
                                                Return(\_SB_.TZ3_._TC2())
                                            }
                                            Else
                                            {
                                                Return(0xffff)
                                            }
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, 0x5))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg3, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        If(Arg2)
                                        {
                                            Store(Arg1, \_SB_.TZ5_.TPSV)
                                            Notify(\_SB_.TZ5_, 0x81)
                                        }
                                        Return(\_SB_.TZ5_._PSV())
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, 0x2))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ5_.TTSP)
                                                Notify(\_SB_.TZ5_, 0x81)
                                            }
                                            Return(\_SB_.TZ5_._TSP())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_3, 0x3))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ5_.TTC1)
                                                    Notify(\_SB_.TZ5_, 0x81)
                                                }
                                                Return(\_SB_.TZ5_._TC1())
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_3, 0x4))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ5_.TTC2)
                                                        Notify(\_SB_.TZ5_, 0x81)
                                                    }
                                                    Return(\_SB_.TZ5_._TC2())
                                                }
                                                Else
                                                {
                                                    Return(0xffff)
                                                }
                                            }
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x6))
                                {
                                    While(One)
                                    {
                                        Name(_T_4, 0x0)
                                        Store(ToInteger(Arg3, ), _T_4)
                                        If(LEqual(_T_4, Zero))
                                        {
                                            If(Arg2)
                                            {
                                                Store(Arg1, \_SB_.TZ6_.TPSV)
                                                Notify(\_SB_.TZ6_, 0x81)
                                            }
                                            Return(\_SB_.TZ6_._PSV())
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_4, 0x2))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ6_.TTSP)
                                                    Notify(\_SB_.TZ6_, 0x81)
                                                }
                                                Return(\_SB_.TZ6_._TSP())
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_4, 0x3))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ6_.TTC1)
                                                        Notify(\_SB_.TZ6_, 0x81)
                                                    }
                                                    Return(\_SB_.TZ6_._TC1())
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_4, 0x4))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ6_.TTC2)
                                                            Notify(\_SB_.TZ6_, 0x81)
                                                        }
                                                        Return(\_SB_.TZ6_._TC2())
                                                    }
                                                    Else
                                                    {
                                                        Return(0xffff)
                                                    }
                                                }
                                            }
                                        }
                                        Break
                                    }
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0xa))
                                    {
                                        While(One)
                                        {
                                            Name(_T_5, 0x0)
                                            Store(ToInteger(Arg3, ), _T_5)
                                            If(LEqual(_T_5, Zero))
                                            {
                                                If(Arg2)
                                                {
                                                    Store(Arg1, \_SB_.TZ10.TPSV)
                                                    Notify(\_SB_.TZ10, 0x81)
                                                }
                                                Return(\_SB_.TZ10._PSV)
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_5, 0x2))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ10.TTSP)
                                                        Notify(\_SB_.TZ10, 0x81)
                                                    }
                                                    Return(\_SB_.TZ10._TSP)
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_5, 0x3))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ10.TTC1)
                                                            Notify(\_SB_.TZ10, 0x81)
                                                        }
                                                        Return(\_SB_.TZ10._TC1)
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_5, 0x4))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Store(Arg1, \_SB_.TZ10.TTC2)
                                                                Notify(\_SB_.TZ10, 0x81)
                                                            }
                                                            Return(\_SB_.TZ10._TC2)
                                                        }
                                                        Else
                                                        {
                                                            Return(0xffff)
                                                        }
                                                    }
                                                }
                                            }
                                            Break
                                        }
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0xb))
                                        {
                                            While(One)
                                            {
                                                Name(_T_6, 0x0)
                                                Store(ToInteger(Arg3, ), _T_6)
                                                If(LEqual(_T_6, Zero))
                                                {
                                                    If(Arg2)
                                                    {
                                                        Store(Arg1, \_SB_.TZ11.TPSV)
                                                        Notify(\_SB_.TZ11, 0x81)
                                                    }
                                                    Return(\_SB_.TZ11._PSV())
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_6, 0x2))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ11.TTSP)
                                                            Notify(\_SB_.TZ11, 0x81)
                                                        }
                                                        Return(\_SB_.TZ11._TSP())
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_6, 0x3))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Store(Arg1, \_SB_.TZ11.TTC1)
                                                                Notify(\_SB_.TZ11, 0x81)
                                                            }
                                                            Return(\_SB_.TZ11._TC1())
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_6, 0x4))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Store(Arg1, \_SB_.TZ11.TTC2)
                                                                    Notify(\_SB_.TZ11, 0x81)
                                                                }
                                                                Return(\_SB_.TZ11._TC2())
                                                            }
                                                            Else
                                                            {
                                                                Return(0xffff)
                                                            }
                                                        }
                                                    }
                                                }
                                                Break
                                            }
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0xd))
                                            {
                                                While(One)
                                                {
                                                    Name(_T_7, 0x0)
                                                    Store(ToInteger(Arg3, ), _T_7)
                                                    If(LEqual(_T_7, Zero))
                                                    {
                                                        If(Arg2)
                                                        {
                                                            Store(Arg1, \_SB_.TZ13.TPSV)
                                                            Notify(\_SB_.TZ13, 0x81)
                                                        }
                                                        Return(\_SB_.TZ13._PSV)
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_7, 0x2))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Store(Arg1, \_SB_.TZ13.TTSP)
                                                                Notify(\_SB_.TZ13, 0x81)
                                                            }
                                                            Return(\_SB_.TZ13._TSP)
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_7, 0x3))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Store(Arg1, \_SB_.TZ13.TTC1)
                                                                    Notify(\_SB_.TZ13, 0x81)
                                                                }
                                                                Return(\_SB_.TZ13._TC1)
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_7, 0x4))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Store(Arg1, \_SB_.TZ13.TTC2)
                                                                        Notify(\_SB_.TZ13, 0x81)
                                                                    }
                                                                    Return(\_SB_.TZ13._TC2)
                                                                }
                                                                Else
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                            }
                                                        }
                                                    }
                                                    Break
                                                }
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0xf))
                                                {
                                                    While(One)
                                                    {
                                                        Name(_T_8, 0x0)
                                                        Store(ToInteger(Arg3, ), _T_8)
                                                        If(LEqual(_T_8, Zero))
                                                        {
                                                            If(Arg2)
                                                            {
                                                                Return(0xffff)
                                                            }
                                                            Return(\_SB_.TZ15._PSV)
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_8, 0x2))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Return(0xffff)
                                                                }
                                                                Return(\_SB_.TZ15._TSP)
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_8, 0x3))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ15._TC1)
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_8, 0x4))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ15._TC2)
                                                                    }
                                                                    Else
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        Break
                                                    }
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x10))
                                                    {
                                                        While(One)
                                                        {
                                                            Name(_T_9, 0x0)
                                                            Store(ToInteger(Arg3, ), _T_9)
                                                            If(LEqual(_T_9, Zero))
                                                            {
                                                                If(Arg2)
                                                                {
                                                                    Store(Arg1, \_SB_.TZ16.TPSV)
                                                                    Notify(\_SB_.TZ16, 0x81)
                                                                }
                                                                Return(\_SB_.TZ16._PSV)
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_9, One))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ16._CRT)
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_9, 0x2))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ16._TSP)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_9, 0x3))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ16._TC1)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_9, 0x4))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                                Return(\_SB_.TZ16._TC2)
                                                                            }
                                                                            Else
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            Break
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x11))
                                                        {
                                                            While(One)
                                                            {
                                                                Name(_T_A, 0x0)
                                                                Store(ToInteger(Arg3, ), _T_A)
                                                                If(LEqual(_T_A, Zero))
                                                                {
                                                                    If(Arg2)
                                                                    {
                                                                        Return(0xffff)
                                                                    }
                                                                    Return(\_SB_.TZ17._PSV)
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_A, 0x2))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ17._TSP)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_A, 0x3))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ17._TC1)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_A, 0x4))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                                Return(\_SB_.TZ17._TC2)
                                                                            }
                                                                            Else
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                Break
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x12))
                                                            {
                                                                While(One)
                                                                {
                                                                    Name(_T_B, 0x0)
                                                                    Store(ToInteger(Arg3, ), _T_B)
                                                                    If(LEqual(_T_B, Zero))
                                                                    {
                                                                        If(Arg2)
                                                                        {
                                                                            Return(0xffff)
                                                                        }
                                                                        Return(\_SB_.TZ18._PSV)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_B, 0x2))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Return(0xffff)
                                                                            }
                                                                            Return(\_SB_.TZ18._TSP)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_B, 0x3))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                                Return(\_SB_.TZ18._TC1)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_B, 0x4))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Return(0xffff)
                                                                                    }
                                                                                    Return(\_SB_.TZ18._TC2)
                                                                                }
                                                                                Else
                                                                                {
                                                                                    Return(0xffff)
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    Break
                                                                }
                                                            }
                                                            Else
                                                            {
                                                                If(LEqual(_T_0, 0x1f))
                                                                {
                                                                    While(One)
                                                                    {
                                                                        Name(_T_C, 0x0)
                                                                        Store(ToInteger(Arg3, ), _T_C)
                                                                        If(LEqual(_T_C, Zero))
                                                                        {
                                                                            If(Arg2)
                                                                            {
                                                                                Store(Arg1, \_SB_.TZ31.TPSV)
                                                                                Notify(\_SB_.TZ31, 0x81)
                                                                            }
                                                                            Return(\_SB_.TZ31._PSV)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_C, One))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Store(Arg1, \_SB_.TZ31.TCRT)
                                                                                    Notify(\_SB_.TZ31, 0x81)
                                                                                }
                                                                                Return(\_SB_.TZ31._CRT)
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_C, 0x2))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ31.TTSP)
                                                                                        Notify(\_SB_.TZ31, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ31._TSP())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_C, 0x3))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ31.TTC1)
                                                                                            Notify(\_SB_.TZ31, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ31._TC1())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_C, 0x4))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ31.TTC2)
                                                                                                Notify(\_SB_.TZ31, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ31._TC2())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            Return(0xffff)
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        Break
                                                                    }
                                                                }
                                                                Else
                                                                {
                                                                    If(LEqual(_T_0, 0x20))
                                                                    {
                                                                        While(One)
                                                                        {
                                                                            Name(_T_D, 0x0)
                                                                            Store(ToInteger(Arg3, ), _T_D)
                                                                            If(LEqual(_T_D, Zero))
                                                                            {
                                                                                If(Arg2)
                                                                                {
                                                                                    Store(Arg1, \_SB_.TZ32.TPSV)
                                                                                    Notify(\_SB_.TZ32, 0x81)
                                                                                }
                                                                                Return(\_SB_.TZ32._PSV())
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_D, One))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ32.TCRT)
                                                                                        Notify(\_SB_.TZ32, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ32._CRT())
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_D, 0x2))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ32.TTSP)
                                                                                            Notify(\_SB_.TZ32, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ32._TSP())
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_D, 0x3))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ32.TTC1)
                                                                                                Notify(\_SB_.TZ32, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ32._TC1())
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_D, 0x4))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ32.TTC2)
                                                                                                    Notify(\_SB_.TZ32, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ32._TC2())
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                Return(0xffff)
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            Break
                                                                        }
                                                                    }
                                                                    Else
                                                                    {
                                                                        If(LEqual(_T_0, 0x21))
                                                                        {
                                                                            While(One)
                                                                            {
                                                                                Name(_T_E, 0x0)
                                                                                Store(ToInteger(Arg3, ), _T_E)
                                                                                If(LEqual(_T_E, Zero))
                                                                                {
                                                                                    If(Arg2)
                                                                                    {
                                                                                        Store(Arg1, \_SB_.TZ33.TPSV)
                                                                                        Notify(\_SB_.TZ33, 0x81)
                                                                                    }
                                                                                    Return(\_SB_.TZ33._PSV)
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_E, One))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ33.TCRT)
                                                                                            Notify(\_SB_.TZ33, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ33._CRT)
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_E, 0x2))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ33.TTSP)
                                                                                                Notify(\_SB_.TZ33, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ33._TSP)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_E, 0x3))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ33.TTC1)
                                                                                                    Notify(\_SB_.TZ33, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ33._TC1)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_E, 0x4))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ33.TTC2)
                                                                                                        Notify(\_SB_.TZ33, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ33._TC2)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    Return(0xffff)
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                Break
                                                                            }
                                                                        }
                                                                        Else
                                                                        {
                                                                            If(LEqual(_T_0, 0x22))
                                                                            {
                                                                                While(One)
                                                                                {
                                                                                    Name(_T_F, 0x0)
                                                                                    Store(ToInteger(Arg3, ), _T_F)
                                                                                    If(LEqual(_T_F, Zero))
                                                                                    {
                                                                                        If(Arg2)
                                                                                        {
                                                                                            Store(Arg1, \_SB_.TZ34.TPSV)
                                                                                            Notify(\_SB_.TZ34, 0x81)
                                                                                        }
                                                                                        Return(\_SB_.TZ34._PSV)
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_F, One))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ34.TCRT)
                                                                                                Notify(\_SB_.TZ34, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ34._CRT)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_F, 0x2))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ34.TTSP)
                                                                                                    Notify(\_SB_.TZ34, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ34._TSP)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_F, 0x3))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ34.TTC1)
                                                                                                        Notify(\_SB_.TZ34, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ34._TC1)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_F, 0x4))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ34.TTC2)
                                                                                                            Notify(\_SB_.TZ34, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ34._TC2)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        Return(0xffff)
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    Break
                                                                                }
                                                                            }
                                                                            Else
                                                                            {
                                                                                If(LEqual(_T_0, 0x23))
                                                                                {
                                                                                    While(One)
                                                                                    {
                                                                                        Name(_T_G, 0x0)
                                                                                        Store(ToInteger(Arg3, ), _T_G)
                                                                                        If(LEqual(_T_G, Zero))
                                                                                        {
                                                                                            If(Arg2)
                                                                                            {
                                                                                                Store(Arg1, \_SB_.TZ35.TPSV)
                                                                                                Notify(\_SB_.TZ35, 0x81)
                                                                                            }
                                                                                            Return(\_SB_.TZ35._PSV)
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_G, One))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ35.TCRT)
                                                                                                    Notify(\_SB_.TZ35, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ35._CRT)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_G, 0x2))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ35.TTSP)
                                                                                                        Notify(\_SB_.TZ35, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ35._TSP)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_G, 0x3))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ35.TTC1)
                                                                                                            Notify(\_SB_.TZ35, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ35._TC1)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_G, 0x4))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ35.TTC2)
                                                                                                                Notify(\_SB_.TZ35, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ35._TC2)
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            Return(0xffff)
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        Break
                                                                                    }
                                                                                }
                                                                                Else
                                                                                {
                                                                                    If(LEqual(_T_0, 0x24))
                                                                                    {
                                                                                        While(One)
                                                                                        {
                                                                                            Name(_T_H, 0x0)
                                                                                            Store(ToInteger(Arg3, ), _T_H)
                                                                                            If(LEqual(_T_H, Zero))
                                                                                            {
                                                                                                If(Arg2)
                                                                                                {
                                                                                                    Store(Arg1, \_SB_.TZ36.TPSV)
                                                                                                    Notify(\_SB_.TZ36, 0x81)
                                                                                                }
                                                                                                Return(\_SB_.TZ36._PSV)
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_H, One))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ36.TCRT)
                                                                                                        Notify(\_SB_.TZ36, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ36._CRT)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_H, 0x2))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ36.TTSP)
                                                                                                            Notify(\_SB_.TZ36, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ36._TSP)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_H, 0x3))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ36.TTC1)
                                                                                                                Notify(\_SB_.TZ36, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ36._TC1)
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_H, 0x4))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ36.TTC2)
                                                                                                                    Notify(\_SB_.TZ36, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ36._TC2)
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                Return(0xffff)
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                            Break
                                                                                        }
                                                                                    }
                                                                                    Else
                                                                                    {
                                                                                        If(LEqual(_T_0, 0x25))
                                                                                        {
                                                                                            While(One)
                                                                                            {
                                                                                                Name(_T_I, 0x0)
                                                                                                Store(ToInteger(Arg3, ), _T_I)
                                                                                                If(LEqual(_T_I, Zero))
                                                                                                {
                                                                                                    If(Arg2)
                                                                                                    {
                                                                                                        Store(Arg1, \_SB_.TZ37.TPSV)
                                                                                                        Notify(\_SB_.TZ37, 0x81)
                                                                                                    }
                                                                                                    Return(\_SB_.TZ37._PSV)
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_I, One))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ37.TCRT)
                                                                                                            Notify(\_SB_.TZ37, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ37._CRT)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_I, 0x2))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ37.TTSP)
                                                                                                                Notify(\_SB_.TZ37, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ37._TSP)
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_I, 0x3))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ37.TTC1)
                                                                                                                    Notify(\_SB_.TZ37, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ37._TC1)
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_I, 0x4))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ37.TTC2)
                                                                                                                        Notify(\_SB_.TZ37, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ37._TC2)
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    Return(0xffff)
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                Break
                                                                                            }
                                                                                        }
                                                                                        Else
                                                                                        {
                                                                                            If(LEqual(_T_0, 0x26))
                                                                                            {
                                                                                                While(One)
                                                                                                {
                                                                                                    Name(_T_J, 0x0)
                                                                                                    Store(ToInteger(Arg3, ), _T_J)
                                                                                                    If(LEqual(_T_J, Zero))
                                                                                                    {
                                                                                                        If(Arg2)
                                                                                                        {
                                                                                                            Store(Arg1, \_SB_.TZ38.TPSV)
                                                                                                            Notify(\_SB_.TZ38, 0x81)
                                                                                                        }
                                                                                                        Return(\_SB_.TZ38._PSV)
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_J, One))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ38.TCRT)
                                                                                                                Notify(\_SB_.TZ38, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ38._CRT)
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_J, 0x2))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ38.TTSP)
                                                                                                                    Notify(\_SB_.TZ38, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ38._TSP)
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_J, 0x3))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ38.TTC1)
                                                                                                                        Notify(\_SB_.TZ38, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ38._TC1)
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_J, 0x4))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ38.TTC2)
                                                                                                                            Notify(\_SB_.TZ38, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ38._TC2)
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        Return(0xffff)
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    Break
                                                                                                }
                                                                                            }
                                                                                            Else
                                                                                            {
                                                                                                If(LEqual(_T_0, 0x63))
                                                                                                {
                                                                                                    While(One)
                                                                                                    {
                                                                                                        Name(_T_K, 0x0)
                                                                                                        Store(ToInteger(Arg3, ), _T_K)
                                                                                                        If(LEqual(_T_K, Zero))
                                                                                                        {
                                                                                                            If(Arg2)
                                                                                                            {
                                                                                                                Store(Arg1, \_SB_.TZ99.TPSV)
                                                                                                                Notify(\_SB_.TZ99, 0x81)
                                                                                                            }
                                                                                                            Return(\_SB_.TZ99._PSV())
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_K, One))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ99.TCRT)
                                                                                                                    Notify(\_SB_.TZ99, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ99._CRT())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_K, 0x2))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ99.TTSP)
                                                                                                                        Notify(\_SB_.TZ99, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ99._TSP())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_K, 0x3))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ99.TTC1)
                                                                                                                            Notify(\_SB_.TZ99, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ99._TC1())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_K, 0x4))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ99.TTC2)
                                                                                                                                Notify(\_SB_.TZ99, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ99._TC2())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            Return(0xffff)
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        Break
                                                                                                    }
                                                                                                }
                                                                                                Else
                                                                                                {
                                                                                                    If(LEqual(_T_0, 0x33))
                                                                                                    {
                                                                                                        While(One)
                                                                                                        {
                                                                                                            Name(_T_L, 0x0)
                                                                                                            Store(ToInteger(Arg3, ), _T_L)
                                                                                                            If(LEqual(_T_L, Zero))
                                                                                                            {
                                                                                                                If(Arg2)
                                                                                                                {
                                                                                                                    Store(Arg1, \_SB_.TZ51.TPSV)
                                                                                                                    Notify(\_SB_.TZ51, 0x81)
                                                                                                                }
                                                                                                                Return(\_SB_.TZ51._PSV())
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_L, 0x2))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ51.TTSP)
                                                                                                                        Notify(\_SB_.TZ51, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ51._TSP())
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_L, 0x3))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ51.TTC1)
                                                                                                                            Notify(\_SB_.TZ51, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ51._TC1())
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_L, 0x4))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ51.TTC2)
                                                                                                                                Notify(\_SB_.TZ51, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ51._TC2())
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            Return(0xffff)
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            Break
                                                                                                        }
                                                                                                    }
                                                                                                    Else
                                                                                                    {
                                                                                                        If(LEqual(_T_0, 0x34))
                                                                                                        {
                                                                                                            While(One)
                                                                                                            {
                                                                                                                Name(_T_M, 0x0)
                                                                                                                Store(ToInteger(Arg3, ), _T_M)
                                                                                                                If(LEqual(_T_M, Zero))
                                                                                                                {
                                                                                                                    If(Arg2)
                                                                                                                    {
                                                                                                                        Store(Arg1, \_SB_.TZ52.TPSV)
                                                                                                                        Notify(\_SB_.TZ52, 0x81)
                                                                                                                    }
                                                                                                                    Return(\_SB_.TZ52._PSV)
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_M, 0x2))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ52.TTSP)
                                                                                                                            Notify(\_SB_.TZ52, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ52._TSP)
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_M, 0x3))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ52.TTC1)
                                                                                                                                Notify(\_SB_.TZ52, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ52._TC1)
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_M, 0x4))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ52.TTC2)
                                                                                                                                    Notify(\_SB_.TZ52, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ52._TC2)
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                Return(0xffff)
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                                Break
                                                                                                            }
                                                                                                        }
                                                                                                        Else
                                                                                                        {
                                                                                                            If(LEqual(_T_0, 0x35))
                                                                                                            {
                                                                                                                While(One)
                                                                                                                {
                                                                                                                    Name(_T_N, 0x0)
                                                                                                                    Store(ToInteger(Arg3, ), _T_N)
                                                                                                                    If(LEqual(_T_N, Zero))
                                                                                                                    {
                                                                                                                        If(Arg2)
                                                                                                                        {
                                                                                                                            Store(Arg1, \_SB_.TZ53.TPSV)
                                                                                                                            Notify(\_SB_.TZ53, 0x81)
                                                                                                                        }
                                                                                                                        Return(\_SB_.TZ53._PSV)
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_N, 0x2))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ53.TTSP)
                                                                                                                                Notify(\_SB_.TZ53, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ53._TSP)
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_N, 0x3))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ53.TTC1)
                                                                                                                                    Notify(\_SB_.TZ53, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ53._TC1)
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_N, 0x4))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ53.TTC2)
                                                                                                                                        Notify(\_SB_.TZ53, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ53._TC2)
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    Return(0xffff)
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                    Break
                                                                                                                }
                                                                                                            }
                                                                                                            Else
                                                                                                            {
                                                                                                                If(LEqual(_T_0, 0x36))
                                                                                                                {
                                                                                                                    While(One)
                                                                                                                    {
                                                                                                                        Name(_T_O, 0x0)
                                                                                                                        Store(ToInteger(Arg3, ), _T_O)
                                                                                                                        If(LEqual(_T_O, Zero))
                                                                                                                        {
                                                                                                                            If(Arg2)
                                                                                                                            {
                                                                                                                                Store(Arg1, \_SB_.TZ54.TPSV)
                                                                                                                                Notify(\_SB_.TZ54, 0x81)
                                                                                                                            }
                                                                                                                            Return(\_SB_.TZ54._PSV)
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_O, 0x2))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ54.TTSP)
                                                                                                                                    Notify(\_SB_.TZ54, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ54._TSP)
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_O, 0x3))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ54.TTC1)
                                                                                                                                        Notify(\_SB_.TZ54, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ54._TC1)
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    If(LEqual(_T_O, 0x4))
                                                                                                                                    {
                                                                                                                                        If(Arg2)
                                                                                                                                        {
                                                                                                                                            Store(Arg1, \_SB_.TZ54.TTC2)
                                                                                                                                            Notify(\_SB_.TZ54, 0x81)
                                                                                                                                        }
                                                                                                                                        Return(\_SB_.TZ54._TC2)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        Return(0xffff)
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Break
                                                                                                                    }
                                                                                                                }
                                                                                                                Else
                                                                                                                {
                                                                                                                    If(LEqual(_T_0, 0x37))
                                                                                                                    {
                                                                                                                        While(One)
                                                                                                                        {
                                                                                                                            Name(_T_P, 0x0)
                                                                                                                            Store(ToInteger(Arg3, ), _T_P)
                                                                                                                            If(LEqual(_T_P, Zero))
                                                                                                                            {
                                                                                                                                If(Arg2)
                                                                                                                                {
                                                                                                                                    Store(Arg1, \_SB_.TZ55.TPSV)
                                                                                                                                    Notify(\_SB_.TZ55, 0x81)
                                                                                                                                }
                                                                                                                                Return(\_SB_.TZ55._PSV)
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_P, 0x2))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ55.TTSP)
                                                                                                                                        Notify(\_SB_.TZ55, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ55._TSP)
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    If(LEqual(_T_P, 0x3))
                                                                                                                                    {
                                                                                                                                        If(Arg2)
                                                                                                                                        {
                                                                                                                                            Store(Arg1, \_SB_.TZ55.TTC1)
                                                                                                                                            Notify(\_SB_.TZ55, 0x81)
                                                                                                                                        }
                                                                                                                                        Return(\_SB_.TZ55._TC1)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        If(LEqual(_T_P, 0x4))
                                                                                                                                        {
                                                                                                                                            If(Arg2)
                                                                                                                                            {
                                                                                                                                                Store(Arg1, \_SB_.TZ55.TTC2)
                                                                                                                                                Notify(\_SB_.TZ55, 0x81)
                                                                                                                                            }
                                                                                                                                            Return(\_SB_.TZ55._TC2)
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            Return(0xffff)
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                            Break
                                                                                                                        }
                                                                                                                    }
                                                                                                                    Else
                                                                                                                    {
                                                                                                                        If(LEqual(_T_0, 0x38))
                                                                                                                        {
                                                                                                                            While(One)
                                                                                                                            {
                                                                                                                                Name(_T_Q, 0x0)
                                                                                                                                Store(ToInteger(Arg3, ), _T_Q)
                                                                                                                                If(LEqual(_T_Q, Zero))
                                                                                                                                {
                                                                                                                                    If(Arg2)
                                                                                                                                    {
                                                                                                                                        Store(Arg1, \_SB_.TZ56.TPSV)
                                                                                                                                        Notify(\_SB_.TZ56, 0x81)
                                                                                                                                    }
                                                                                                                                    Return(\_SB_.TZ56._PSV)
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    If(LEqual(_T_Q, 0x2))
                                                                                                                                    {
                                                                                                                                        If(Arg2)
                                                                                                                                        {
                                                                                                                                            Store(Arg1, \_SB_.TZ56.TTSP)
                                                                                                                                            Notify(\_SB_.TZ56, 0x81)
                                                                                                                                        }
                                                                                                                                        Return(\_SB_.TZ56._TSP)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        If(LEqual(_T_Q, 0x3))
                                                                                                                                        {
                                                                                                                                            If(Arg2)
                                                                                                                                            {
                                                                                                                                                Store(Arg1, \_SB_.TZ56.TTC1)
                                                                                                                                                Notify(\_SB_.TZ56, 0x81)
                                                                                                                                            }
                                                                                                                                            Return(\_SB_.TZ56._TC1)
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            If(LEqual(_T_Q, 0x4))
                                                                                                                                            {
                                                                                                                                                If(Arg2)
                                                                                                                                                {
                                                                                                                                                    Store(Arg1, \_SB_.TZ56.TTC2)
                                                                                                                                                    Notify(\_SB_.TZ56, 0x81)
                                                                                                                                                }
                                                                                                                                                Return(\_SB_.TZ56._TC2)
                                                                                                                                            }
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                                Return(0xffff)
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                Break
                                                                                                                            }
                                                                                                                        }
                                                                                                                        Else
                                                                                                                        {
                                                                                                                            If(LEqual(_T_0, 0x39))
                                                                                                                            {
                                                                                                                                While(One)
                                                                                                                                {
                                                                                                                                    Name(_T_R, 0x0)
                                                                                                                                    Store(ToInteger(Arg3, ), _T_R)
                                                                                                                                    If(LEqual(_T_R, Zero))
                                                                                                                                    {
                                                                                                                                        If(Arg2)
                                                                                                                                        {
                                                                                                                                            Store(Arg1, \_SB_.TZ57.TPSV)
                                                                                                                                            Notify(\_SB_.TZ57, 0x81)
                                                                                                                                        }
                                                                                                                                        Return(\_SB_.TZ57._PSV)
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        If(LEqual(_T_R, 0x2))
                                                                                                                                        {
                                                                                                                                            If(Arg2)
                                                                                                                                            {
                                                                                                                                                Store(Arg1, \_SB_.TZ57.TTSP)
                                                                                                                                                Notify(\_SB_.TZ57, 0x81)
                                                                                                                                            }
                                                                                                                                            Return(\_SB_.TZ57._TSP)
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            If(LEqual(_T_R, 0x3))
                                                                                                                                            {
                                                                                                                                                If(Arg2)
                                                                                                                                                {
                                                                                                                                                    Store(Arg1, \_SB_.TZ57.TTC1)
                                                                                                                                                    Notify(\_SB_.TZ57, 0x81)
                                                                                                                                                }
                                                                                                                                                Return(\_SB_.TZ57._TC1)
                                                                                                                                            }
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                                If(LEqual(_T_R, 0x4))
                                                                                                                                                {
                                                                                                                                                    If(Arg2)
                                                                                                                                                    {
                                                                                                                                                        Store(Arg1, \_SB_.TZ57.TTC2)
                                                                                                                                                        Notify(\_SB_.TZ57, 0x81)
                                                                                                                                                    }
                                                                                                                                                    Return(\_SB_.TZ57._TC2)
                                                                                                                                                }
                                                                                                                                                Else
                                                                                                                                                {
                                                                                                                                                    Return(0xffff)
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    Break
                                                                                                                                }
                                                                                                                            }
                                                                                                                            Else
                                                                                                                            {
                                                                                                                                If(LEqual(_T_0, 0x3a))
                                                                                                                                {
                                                                                                                                    While(One)
                                                                                                                                    {
                                                                                                                                        Name(_T_S, 0x0)
                                                                                                                                        Store(ToInteger(Arg3, ), _T_S)
                                                                                                                                        If(LEqual(_T_S, Zero))
                                                                                                                                        {
                                                                                                                                            If(Arg2)
                                                                                                                                            {
                                                                                                                                                Store(Arg1, \_SB_.TZ58.TPSV)
                                                                                                                                                Notify(\_SB_.TZ58, 0x81)
                                                                                                                                            }
                                                                                                                                            Return(\_SB_.TZ58._PSV())
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            If(LEqual(_T_S, 0x2))
                                                                                                                                            {
                                                                                                                                                If(Arg2)
                                                                                                                                                {
                                                                                                                                                    Store(Arg1, \_SB_.TZ58.TTSP)
                                                                                                                                                    Notify(\_SB_.TZ58, 0x81)
                                                                                                                                                }
                                                                                                                                                Return(\_SB_.TZ58._TSP())
                                                                                                                                            }
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                                If(LEqual(_T_S, 0x3))
                                                                                                                                                {
                                                                                                                                                    If(Arg2)
                                                                                                                                                    {
                                                                                                                                                        Store(Arg1, \_SB_.TZ58.TTC1)
                                                                                                                                                        Notify(\_SB_.TZ58, 0x81)
                                                                                                                                                    }
                                                                                                                                                    Return(\_SB_.TZ58._TC1())
                                                                                                                                                }
                                                                                                                                                Else
                                                                                                                                                {
                                                                                                                                                    If(LEqual(_T_S, 0x4))
                                                                                                                                                    {
                                                                                                                                                        If(Arg2)
                                                                                                                                                        {
                                                                                                                                                            Store(Arg1, \_SB_.TZ58.TTC2)
                                                                                                                                                            Notify(\_SB_.TZ58, 0x81)
                                                                                                                                                        }
                                                                                                                                                        Return(\_SB_.TZ58._TC2())
                                                                                                                                                    }
                                                                                                                                                    Else
                                                                                                                                                    {
                                                                                                                                                        Return(0xffff)
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        Break
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                Else
                                                                                                                                {
                                                                                                                                    If(LEqual(_T_0, 0x3b))
                                                                                                                                    {
                                                                                                                                        While(One)
                                                                                                                                        {
                                                                                                                                            Name(_T_T, 0x0)
                                                                                                                                            Store(ToInteger(Arg3, ), _T_T)
                                                                                                                                            If(LEqual(_T_T, Zero))
                                                                                                                                            {
                                                                                                                                                If(Arg2)
                                                                                                                                                {
                                                                                                                                                    Store(Arg1, \_SB_.TZ59.TPSV)
                                                                                                                                                    Notify(\_SB_.TZ59, 0x81)
                                                                                                                                                }
                                                                                                                                                Return(\_SB_.TZ59._PSV())
                                                                                                                                            }
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                                If(LEqual(_T_T, 0x2))
                                                                                                                                                {
                                                                                                                                                    If(Arg2)
                                                                                                                                                    {
                                                                                                                                                        Store(Arg1, \_SB_.TZ59.TTSP)
                                                                                                                                                        Notify(\_SB_.TZ59, 0x81)
                                                                                                                                                    }
                                                                                                                                                    Return(\_SB_.TZ59._TSP())
                                                                                                                                                }
                                                                                                                                                Else
                                                                                                                                                {
                                                                                                                                                    If(LEqual(_T_T, 0x3))
                                                                                                                                                    {
                                                                                                                                                        If(Arg2)
                                                                                                                                                        {
                                                                                                                                                            Store(Arg1, \_SB_.TZ59.TTC1)
                                                                                                                                                            Notify(\_SB_.TZ59, 0x81)
                                                                                                                                                        }
                                                                                                                                                        Return(\_SB_.TZ59._TC1())
                                                                                                                                                    }
                                                                                                                                                    Else
                                                                                                                                                    {
                                                                                                                                                        If(LEqual(_T_T, 0x4))
                                                                                                                                                        {
                                                                                                                                                            If(Arg2)
                                                                                                                                                            {
                                                                                                                                                                Store(Arg1, \_SB_.TZ59.TTC2)
                                                                                                                                                                Notify(\_SB_.TZ59, 0x81)
                                                                                                                                                            }
                                                                                                                                                            Return(\_SB_.TZ59._TC2())
                                                                                                                                                        }
                                                                                                                                                        Else
                                                                                                                                                        {
                                                                                                                                                            Return(0xffff)
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            Break
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    Else
                                                                                                                                    {
                                                                                                                                        If(LEqual(_T_0, 0x3c))
                                                                                                                                        {
                                                                                                                                            While(One)
                                                                                                                                            {
                                                                                                                                                Name(_T_U, 0x0)
                                                                                                                                                Store(ToInteger(Arg3, ), _T_U)
                                                                                                                                                If(LEqual(_T_U, Zero))
                                                                                                                                                {
                                                                                                                                                    If(Arg2)
                                                                                                                                                    {
                                                                                                                                                        Store(Arg1, \_SB_.TZ60.TPSV)
                                                                                                                                                        Notify(\_SB_.TZ60, 0x81)
                                                                                                                                                    }
                                                                                                                                                    Return(\_SB_.TZ60._PSV)
                                                                                                                                                }
                                                                                                                                                Else
                                                                                                                                                {
                                                                                                                                                    If(LEqual(_T_U, 0x2))
                                                                                                                                                    {
                                                                                                                                                        If(Arg2)
                                                                                                                                                        {
                                                                                                                                                            Store(Arg1, \_SB_.TZ60.TTSP)
                                                                                                                                                            Notify(\_SB_.TZ60, 0x81)
                                                                                                                                                        }
                                                                                                                                                        Return(\_SB_.TZ60._TSP)
                                                                                                                                                    }
                                                                                                                                                    Else
                                                                                                                                                    {
                                                                                                                                                        If(LEqual(_T_U, 0x3))
                                                                                                                                                        {
                                                                                                                                                            If(Arg2)
                                                                                                                                                            {
                                                                                                                                                                Store(Arg1, \_SB_.TZ60.TTC1)
                                                                                                                                                                Notify(\_SB_.TZ60, 0x81)
                                                                                                                                                            }
                                                                                                                                                            Return(\_SB_.TZ60._TC1)
                                                                                                                                                        }
                                                                                                                                                        Else
                                                                                                                                                        {
                                                                                                                                                            If(LEqual(_T_U, 0x4))
                                                                                                                                                            {
                                                                                                                                                                If(Arg2)
                                                                                                                                                                {
                                                                                                                                                                    Store(Arg1, \_SB_.TZ60.TTC2)
                                                                                                                                                                    Notify(\_SB_.TZ60, 0x81)
                                                                                                                                                                }
                                                                                                                                                                Return(\_SB_.TZ60._TC2)
                                                                                                                                                            }
                                                                                                                                                            Else
                                                                                                                                                            {
                                                                                                                                                                Return(0xffff)
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                Break
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        Else
                                                                                                                                        {
                                                                                                                                            If(LEqual(_T_0, 0x3d))
                                                                                                                                            {
                                                                                                                                                While(One)
                                                                                                                                                {
                                                                                                                                                    Name(_T_V, 0x0)
                                                                                                                                                    Store(ToInteger(Arg3, ), _T_V)
                                                                                                                                                    If(LEqual(_T_V, Zero))
                                                                                                                                                    {
                                                                                                                                                        If(Arg2)
                                                                                                                                                        {
                                                                                                                                                            Store(Arg1, \_SB_.TZ61.TPSV)
                                                                                                                                                            Notify(\_SB_.TZ61, 0x81)
                                                                                                                                                        }
                                                                                                                                                        Return(\_SB_.TZ61._PSV())
                                                                                                                                                    }
                                                                                                                                                    Else
                                                                                                                                                    {
                                                                                                                                                        If(LEqual(_T_V, 0x2))
                                                                                                                                                        {
                                                                                                                                                            If(Arg2)
                                                                                                                                                            {
                                                                                                                                                                Store(Arg1, \_SB_.TZ61.TTSP)
                                                                                                                                                                Notify(\_SB_.TZ61, 0x81)
                                                                                                                                                            }
                                                                                                                                                            Return(\_SB_.TZ61._TSP())
                                                                                                                                                        }
                                                                                                                                                        Else
                                                                                                                                                        {
                                                                                                                                                            If(LEqual(_T_V, 0x3))
                                                                                                                                                            {
                                                                                                                                                                If(Arg2)
                                                                                                                                                                {
                                                                                                                                                                    Store(Arg1, \_SB_.TZ61.TTC1)
                                                                                                                                                                    Notify(\_SB_.TZ61, 0x81)
                                                                                                                                                                }
                                                                                                                                                                Return(\_SB_.TZ61._TC1())
                                                                                                                                                            }
                                                                                                                                                            Else
                                                                                                                                                            {
                                                                                                                                                                If(LEqual(_T_V, 0x4))
                                                                                                                                                                {
                                                                                                                                                                    If(Arg2)
                                                                                                                                                                    {
                                                                                                                                                                        Store(Arg1, \_SB_.TZ61.TTC2)
                                                                                                                                                                        Notify(\_SB_.TZ61, 0x81)
                                                                                                                                                                    }
                                                                                                                                                                    Return(\_SB_.TZ61._TC2())
                                                                                                                                                                }
                                                                                                                                                                Else
                                                                                                                                                                {
                                                                                                                                                                    Return(0xffff)
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    Break
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            Else
                                                                                                                                            {
                                                                                                                                                If(LEqual(_T_0, 0x3e))
                                                                                                                                                {
                                                                                                                                                    While(One)
                                                                                                                                                    {
                                                                                                                                                        Name(_T_W, 0x0)
                                                                                                                                                        Store(ToInteger(Arg3, ), _T_W)
                                                                                                                                                        If(LEqual(_T_W, Zero))
                                                                                                                                                        {
                                                                                                                                                            If(Arg2)
                                                                                                                                                            {
                                                                                                                                                                Store(Arg1, \_SB_.TZ62.TPSV)
                                                                                                                                                                Notify(\_SB_.TZ62, 0x81)
                                                                                                                                                            }
                                                                                                                                                            Return(\_SB_.TZ62._PSV)
                                                                                                                                                        }
                                                                                                                                                        Else
                                                                                                                                                        {
                                                                                                                                                            If(LEqual(_T_W, 0x2))
                                                                                                                                                            {
                                                                                                                                                                If(Arg2)
                                                                                                                                                                {
                                                                                                                                                                    Store(Arg1, \_SB_.TZ62.TTSP)
                                                                                                                                                                    Notify(\_SB_.TZ62, 0x81)
                                                                                                                                                                }
                                                                                                                                                                Return(\_SB_.TZ62._TSP)
                                                                                                                                                            }
                                                                                                                                                            Else
                                                                                                                                                            {
                                                                                                                                                                If(LEqual(_T_W, 0x3))
                                                                                                                                                                {
                                                                                                                                                                    If(Arg2)
                                                                                                                                                                    {
                                                                                                                                                                        Store(Arg1, \_SB_.TZ62.TTC1)
                                                                                                                                                                        Notify(\_SB_.TZ62, 0x81)
                                                                                                                                                                    }
                                                                                                                                                                    Return(\_SB_.TZ62._TC1)
                                                                                                                                                                }
                                                                                                                                                                Else
                                                                                                                                                                {
                                                                                                                                                                    If(LEqual(_T_W, 0x4))
                                                                                                                                                                    {
                                                                                                                                                                        If(Arg2)
                                                                                                                                                                        {
                                                                                                                                                                            Store(Arg1, \_SB_.TZ62.TTC2)
                                                                                                                                                                            Notify(\_SB_.TZ62, 0x81)
                                                                                                                                                                        }
                                                                                                                                                                        Return(\_SB_.TZ62._TC2)
                                                                                                                                                                    }
                                                                                                                                                                    Else
                                                                                                                                                                    {
                                                                                                                                                                        Return(0xffff)
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        Break
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                Else
                                                                                                                                                {
                                                                                                                                                    Return(0xffff)
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    Break
                }
            }
            Name(_DEP, Package(One)
            {
                \_SB_.IPCC
            })
            Method(_SUB, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.PSUB, "MTP08250"))
                {
                    Return("MTP08250")
                }
                Else
                {
                    If(LEqual(\_SB_.PSUB, "QRD08250"))
                    {
                        Return("QRD08250")
                    }
                    Else
                    {
                        If(LEqual(\_SB_.PSUB, "CDP08250"))
                        {
                            Return("CDP08250")
                        }
                    }
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x4c, 0xa3, 0x5c, 0x8d, 0x83, 0xae, 0x2a, 0x4a, 0x9d, 0xd1, 0xa7, 0x4f,
	0xfe, 0xad, 0x54, 0x8b
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg2, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(ToInteger(Arg1, ), _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(0x7e)
                                    }
                                    Break
                                }
                                Return(Zero)
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    Name(SUBI, Package(0x5)
                                    {
                                        Package(0x3)
                                        {
                                            "adsp",
                                            One,
                                            0x2
                                        },
                                        Package(0x3)
                                        {
                                            "slpi",
                                            One,
                                            0x3
                                        },
                                        Package(0x3)
                                        {
                                            "cdsp",
                                            One,
                                            0x4
                                        },
                                        Package(0x3)
                                        {
                                            "modem",
                                            Zero,
                                            0x5
                                        },
                                        Package(0x3)
                                        {
                                            "spss",
                                            Zero,
                                            0x6
                                        }
                                    })
                                    Return(SUBI)
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        If(CondRefOf(\_SB_.ADSP, ))
                                        {
                                            If(CondRefOf(\_SB_.ADSP._STA, ))
                                            {
                                                Return(\_SB_.ADSP._STA())
                                            }
                                            Else
                                            {
                                                Return(0xf)
                                            }
                                        }
                                        Else
                                        {
                                            Return(Zero)
                                        }
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            If(CondRefOf(\_SB_.SCSS, ))
                                            {
                                                If(CondRefOf(\_SB_.SCSS._STA, ))
                                                {
                                                    Return(\_SB_.SCSS._STA())
                                                }
                                                Else
                                                {
                                                    Return(0xf)
                                                }
                                            }
                                            Else
                                            {
                                                Return(Zero)
                                            }
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_1, 0x4))
                                            {
                                                If(CondRefOf(\_SB_.NSP0, ))
                                                {
                                                    If(CondRefOf(\_SB_.NSP0._STA, ))
                                                    {
                                                        Return(\_SB_.NSP0._STA())
                                                    }
                                                    Else
                                                    {
                                                        Return(0xf)
                                                    }
                                                }
                                                Else
                                                {
                                                    Return(Zero)
                                                }
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_1, 0x5))
                                                {
                                                    If(CondRefOf(\_SB_.AMSS, ))
                                                    {
                                                        If(CondRefOf(\_SB_.AMSS._STA, ))
                                                        {
                                                            Return(\_SB_.AMSS._STA)
                                                        }
                                                        Else
                                                        {
                                                            Return(0xf)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Return(Zero)
                                                    }
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_1, 0x6))
                                                    {
                                                        If(CondRefOf(\_SB_.SPSS, ))
                                                        {
                                                            If(CondRefOf(\_SB_.SPSS._STA, ))
                                                            {
                                                                Return(\_SB_.SPSS._STA())
                                                            }
                                                            Else
                                                            {
                                                                Return(0xf)
                                                            }
                                                        }
                                                        Else
                                                        {
                                                            Return(Zero)
                                                        }
                                                    }
                                                    Else
                                                    {
                                                        Return(Zero)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Zero)
                    }
                    Break
                }
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x65)
                {
	0x89, 0x06, 0x00, 0x11, 0x01, 0x1a, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x11, 0x01, 0x1c, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x11, 0x01, 0x1b,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x11, 0x01, 0x1d, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x25, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x3e, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x3f,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0x33, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x65, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x0d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x13,
	0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
            Field(\_SB_.ABD_.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection(
                    I2CSerialBus(0x1, ControllerInitiated, 0, AddressingMode7Bit, "\\_SB.ABD", 0, ResourceConsumer, , )
                ),
                AccessAs(BufferAcc, AttribRawBytes(21)),
                FLD0, 168
            }
            Method(GEPT, 0x0, NotSerialized)
            {
                Name(BUFF, Buffer(0x4)
                {
                })
                CreateByteField(BUFF, Zero, STAT)
                CreateWordField(BUFF, 0x2, DATA)
                Store(One, DATA)
                Return(DATA)
            }
            Name(ROST, Zero)
            Method(NPUR, 0x1, NotSerialized)
            {
                Store(Arg0, Index(\_SB_.AGR0._PUR, One, ))
                Notify(\_SB_.AGR0, 0x80)
            }
            Method(INTR, 0x0, NotSerialized)
            {
                Name(RBUF, Package(0x18)
                {
                    0x2,
                    One,
                    0x3,
                    One,
                    0x6,
                    0x17911008,
                    One,
                    Zero,
                    0x86000000,
                    0x200000,
                    Zero,
                    Zero,
                    0xc300000,
                    0x1000,
                    Zero,
                    Zero,
                    0x1fd4000,
                    0x8,
                    Zero,
                    Zero,
                    0x17c0000c,
                    Zero,
                    Zero,
                    Zero
                })
                Return(RBUF)
            }
            Method(STND, 0x0, NotSerialized)
            {
                Return(STNX)
            }
            Name(STNX, Package(0x7)
            {
                "DMPO",
                "DMPA",
                "DMPB",
                "DMDS",
                "DMPL",
                "XMPL",
                "DMEP"
            })
            Name(DCVS, Zero)
            Method(PGDS, 0x0, NotSerialized)
            {
                Return(DCVS)
            }
            Name(PPPP, Package(0x2e)
            {
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS3_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS4_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS5_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS6_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS3_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS4_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS6_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS7_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_SMPS8_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO9_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO10_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO11_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO12_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO13_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO14_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO15_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO16_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO17_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO18_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO2_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO3_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO4_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO5_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO6_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO7_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO8_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO9_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO10_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_LDO11_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK1_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK3_A"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_BUCK_BOOST1_C"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG1"
                },
                Package(0x1)
                {
                    "PPP_RESOURCE_ID_FIXED_VREG2"
                }
            })
            Method(PPPM, 0x0, NotSerialized)
            {
                Return(PPPP)
            }
            Name(PRRP, Package(0x0)
            {
            })
            Method(PPRR, 0x0, NotSerialized)
            {
                Return(PRRP)
            }
            Name(FPDP, Zero)
            Method(FPMD, 0x0, NotSerialized)
            {
                Return(FPDP)
            }
            Method(DPRF, 0x0, NotSerialized)
            {
                Return(\_SB_.DPP0)
            }
            Method(DMRF, 0x0, NotSerialized)
            {
                Return(\_SB_.DPP1)
            }
            Method(MPRF, 0x0, NotSerialized)
            {
                Return(\_SB_.MPP0)
            }
            Method(MMRF, 0x0, NotSerialized)
            {
                Return(\_SB_.MPP1)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(PREL, 0x0, NotSerialized)
            {
                Name(PREX, Package(0x3)
                {
                    "DM0G",
                    "DM4G",
                    "DM5G"
                })
                Return(PREX)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(PEPH, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    "ACPI\\VEN_QCOM&DEV_2517"
                })
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(APMD, 0x0, NotSerialized)
            {
                Return(APCC)
            }
            Name(APCC, Package(0x3)
            {
                Package(0x1a)
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUDD",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        One,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x8)
                                    {
                                        "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                                        0xc,
                                        0x324b00,
                                        One,
                                        0x6,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x8)
                                    {
                                        "PPP_RESOURCE_ID_BUCK_BOOST1_C",
                                        0xc,
                                        0x324b00,
                                        Zero,
                                        0x2,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                }
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x2,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_SMPS4_A",
                                        0x2,
                                        0x1b7740,
                                        One,
                                        0x6,
                                        Zero
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_SMPS4_A",
                                        0x2,
                                        Zero,
                                        Zero,
                                        0x4,
                                        Zero
                                    }
                                }
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x3,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x4,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x5,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x5)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        Zero,
                                        One,
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        One,
                                        One,
                                        One,
                                        Zero,
                                        0x2,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x2,
                                        One,
                                        One,
                                        Zero,
                                        0x2,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        Zero,
                                        One,
                                        One,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        One,
                                        One,
                                        One,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x2,
                                        One,
                                        One,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                }
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x6,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x5)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x3,
                                        One,
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x4,
                                        One,
                                        One,
                                        Zero,
                                        0x2,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x5,
                                        One,
                                        0x2,
                                        Zero,
                                        0x2,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x3,
                                        One,
                                        One,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x4,
                                        One,
                                        One,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x8)
                                    {
                                        0x5,
                                        One,
                                        0x2,
                                        Zero,
                                        One,
                                        Zero,
                                        Zero,
                                        One
                                    }
                                }
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x7,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x8,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x9,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xa,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xb,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x5)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x89,
                                        One,
                                        0x3,
                                        One,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x85,
                                        One,
                                        One,
                                        One,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x87,
                                        One,
                                        One,
                                        One,
                                        Zero,
                                        Zero
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x89,
                                        Zero,
                                        Zero,
                                        Zero,
                                        One,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x85,
                                        Zero,
                                        Zero,
                                        Zero,
                                        One,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "TLMMGPIO",
                                    Package(0x6)
                                    {
                                        0x87,
                                        Zero,
                                        Zero,
                                        Zero,
                                        One,
                                        Zero
                                    }
                                }
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xc,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xd,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xe,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0xf,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x10,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x11,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x12,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x13,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x14,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x15,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x16,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "COMPONENT",
                        0x17,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    }
                },
                Package(0x3)
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUDD.MBHC",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    }
                },
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUDD.QCRT",
                    Package(0x3)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_xo",
                                0x80
                            }
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_xo",
                                Zero
                            }
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_xo",
                                Zero
                            }
                        }
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(G0MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xc)
                        {
                            "COMPONENT",
                            Zero,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x17)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_pclk0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_esc0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_byte0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_byte0_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO9_A",
                                            One,
                                            0x124f80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO5_A",
                                            One,
                                            0xd6d80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO14_A",
                                            One,
                                            0x1b7740,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "TLMMGPIO",
                                        Package(0x6)
                                        {
                                            0x42,
                                            One,
                                            One,
                                            Zero,
                                            Zero,
                                            Zero
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0xd)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_pclk0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_esc0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_byte0_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_byte0_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x5,
                                Package(0x7)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            0x2
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_xo_clk",
                                            0x2
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(G4MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xb)
                        {
                            "COMPONENT",
                            0x4,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x15)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_pixel_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO5_A",
                                            One,
                                            0xd6d80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO9_A",
                                            One,
                                            0x124f80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_pixel_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_edp_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
            Method(G5MD, 0x0, NotSerialized)
            {
                Name(GPCC, Package(0x1)
                {
                    Package(0x4)
                    {
                        "DEVICE",
                        0x82,
                        "\\_SB.GPU0",
                        Package(0xb)
                        {
                            "COMPONENT",
                            0x5,
                            Package(0x3)
                            {
                                "FSTATE",
                                Zero,
                                Package(0x1c)
                                {
                                    "EXIT",
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_xo_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "FOOTSWITCH",
                                        Package(0x3)
                                        {
                                            "disp_cc_mdss_core_gdsc",
                                            One,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_MDP0",
                                            "ICBID_SLAVE_EBI1",
                                            0x2faf0800,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_disp_hf_axi_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_prim_phy_pipe_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb30_prim_sleep_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_prim_phy_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "gcc_usb3_prim_phy_com_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_rscc_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_ahb_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_vsync_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_pixel_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_link_intf_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO9_A",
                                            One,
                                            0x124f80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO18_A",
                                            One,
                                            0xd6d80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO12_A",
                                            One,
                                            0x1b7740,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO2_A",
                                            One,
                                            0x2ee000,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "PMICVREGVOTE",
                                        Package(0x8)
                                        {
                                            "PPP_RESOURCE_ID_LDO5_A",
                                            One,
                                            0xd6d80,
                                            One,
                                            0x7,
                                            Zero,
                                            "HLOS_DRV",
                                            "REQUIRED"
                                        }
                                    }
                                }
                            },
                            Package(0x2)
                            {
                                "FSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "INIT_FSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PRELOAD_FSTATE",
                                One
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                One,
                                Package(0x4)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x4)
                                        {
                                            "disp_cc_mdss_mdp_clk",
                                            0x3,
                                            0x16a65700,
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "BUSARB",
                                        Package(0x5)
                                        {
                                            0x3,
                                            "ICBID_MASTER_APPSS_PROC",
                                            "ICBID_SLAVE_DISPLAY_CFG",
                                            0x47868c0,
                                            Zero
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x2,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x3,
                                Package(0x2)
                                {
                                    "PSTATE",
                                    Zero
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE_SET",
                                0x4,
                                Package(0x6)
                                {
                                    "PSTATE",
                                    Zero,
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_aux_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_pixel_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_link_clk",
                                            One
                                        }
                                    },
                                    Package(0x2)
                                    {
                                        "CLOCK",
                                        Package(0x2)
                                        {
                                            "disp_cc_mdss_dp_link_intf_clk",
                                            One
                                        }
                                    }
                                },
                                Package(0x2)
                                {
                                    "PRELOAD_PSTATE",
                                    Zero
                                }
                            }
                        }
                    }
                })
                Return(GPCC)
            }
        }
        Scope(\_SB_.PEP0)
        {
            Method(MPMD, 0x0, NotSerialized)
            {
                Return(MPCC)
            }
            Name(MPCC, Package(0x0)
            {
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(OPMD, 0x0, NotSerialized)
            {
                Return(OPCC)
            }
            Name(OPCC, Package(0x1)
            {
                Package(0x4)
                {
                    "DEVICE",
                    "\\_SB.ADSP.ADCM.AUDD.SPK0",
                    Package(0x5)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x72,
                                Zero,
                                Zero,
                                One,
                                0x3,
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "DELAY",
                            Package(0x1)
                            {
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x72,
                                One,
                                Zero,
                                One,
                                0x3,
                                0x2
                            }
                        }
                    },
                    Package(0x3)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x72,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(LPMD, 0x0, NotSerialized)
            {
                Return(LPCC)
            }
            Name(LPCC, Package(0x8)
            {
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.UCP0",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x16)
                        {
                            "PSTATE",
                            Zero,
                            Package(0x2)
                            {
                                "NPARESOURCE",
                                Package(0x3)
                                {
                                    One,
                                    "/arc/client/rail_cx",
                                    0x100
                                }
                            },
                            Package(0x2)
                            {
                                "FOOTSWITCH",
                                Package(0x2)
                                {
                                    "gcc_usb30_prim_gdsc",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb30_prim_sleep_clk",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_prim_phy_pipe_clk",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_aggre_usb3_prim_axi_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_cfg_noc_usb3_prim_axi_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb30_prim_master_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb3_prim_phy_aux_clk",
                                    0x8,
                                    0x4b0,
                                    0x7
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb3_prim_phy_com_aux_clk",
                                    0x8,
                                    0x4b00,
                                    0x7
                                }
                            },
                            Package(0x2)
                            {
                                "FOOTSWITCH",
                                Package(0x2)
                                {
                                    "gcc_usb30_sec_gdsc",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb30_sec_sleep_clk",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_sec_phy_pipe_clk",
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_aggre_usb3_sec_axi_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_cfg_noc_usb3_sec_axi_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb30_sec_master_clk",
                                    0x8,
                                    0xc8,
                                    0x9
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb3_sec_phy_aux_clk",
                                    0x8,
                                    0x4b0,
                                    0x7
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb3_sec_phy_com_aux_clk",
                                    0x8,
                                    0x4b00,
                                    0x7
                                }
                            },
                            Package(0x2)
                            {
                                "BUSARB",
                                Package(0x5)
                                {
                                    0x3,
                                    "ICBID_MASTER_APPSS_PROC",
                                    "ICBID_SLAVE_USB3_0",
                                    0x17d78400,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "BUSARB",
                                Package(0x5)
                                {
                                    0x3,
                                    "ICBID_MASTER_APPSS_PROC",
                                    "ICBID_SLAVE_USB3_1",
                                    0x17d78400,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_sec_clkref_en",
                                    One
                                }
                            }
                        },
                        Package(0x14)
                        {
                            "PSTATE",
                            One,
                            Package(0x2)
                            {
                                "BUSARB",
                                Package(0x5)
                                {
                                    0x3,
                                    "ICBID_MASTER_APPSS_PROC",
                                    "ICBID_SLAVE_USB3_0",
                                    Zero,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "BUSARB",
                                Package(0x5)
                                {
                                    0x3,
                                    "ICBID_MASTER_APPSS_PROC",
                                    "ICBID_SLAVE_USB3_1",
                                    Zero,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb30_prim_master_clk",
                                    0x3,
                                    0x927c00,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb30_prim_master_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_cfg_noc_usb3_prim_axi_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_aggre_usb3_prim_axi_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_prim_phy_aux_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_prim_phy_com_aux_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "FOOTSWITCH",
                                Package(0x2)
                                {
                                    "gcc_usb30_prim_gdsc",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x4)
                                {
                                    "gcc_usb30_sec_master_clk",
                                    0x3,
                                    0x927c00,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb30_sec_master_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_cfg_noc_usb3_sec_axi_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_aggre_usb3_sec_axi_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_sec_phy_aux_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_sec_phy_com_aux_clk",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "CLOCK",
                                Package(0x2)
                                {
                                    "gcc_usb3_sec_clkref_en",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "FOOTSWITCH",
                                Package(0x2)
                                {
                                    "gcc_usb30_sec_gdsc",
                                    0x2
                                }
                            },
                            Package(0x2)
                            {
                                "NPARESOURCE",
                                Package(0x3)
                                {
                                    One,
                                    "/arc/client/rail_cx",
                                    Zero
                                }
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.PTCC",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x4)
                        {
                            "PSTATE",
                            Zero,
                            Package(0x2)
                            {
                                "PMICVREGVOTE",
                                Package(0x6)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A",
                                    One,
                                    0x2ee000,
                                    One,
                                    One,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PMICVREGVOTE",
                                Package(0x6)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A",
                                    One,
                                    0x1b7740,
                                    One,
                                    One,
                                    Zero
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE",
                            One,
                            Package(0x2)
                            {
                                "PMICVREGVOTE",
                                Package(0x6)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A",
                                    One,
                                    Zero,
                                    Zero,
                                    Zero,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PMICVREGVOTE",
                                Package(0x6)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A",
                                    One,
                                    Zero,
                                    Zero,
                                    Zero,
                                    Zero
                                }
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.URS0",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS0.USB0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x16)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS0.UFN0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x16)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_prim_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_prim_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_prim_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_0",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_prim_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.URS1",
                    Package(0x5)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS1.USB1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        One,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x16)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.URS1.UFN1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "PSTATE",
                            Zero
                        }
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x8,
                                0xc8,
                                0x9
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x8,
                                0x4b00,
                                0x7
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                0x100
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                0x28000000,
                                0x28000000
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                0xbebc200,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x15)
                    {
                        "DSTATE",
                        0x2,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x12
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                0x1b7740,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                0x2ee000,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                0xdea80,
                                One,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x16)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_sleep_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x3,
                                0x2580,
                                0x5
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x3)
                            {
                                "gcc_usb30_sec_master_clk",
                                0x9,
                                0x13
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_cfg_noc_usb3_sec_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_mock_utmi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_phy_com_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_usb3_sec_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_USB3_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_USB3_1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_usb30_sec_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "NPARESOURCE",
                            Package(0x3)
                            {
                                One,
                                "/arc/client/rail_cx",
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO12_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO2_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO18_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        0x3
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(BPMD, 0x0, NotSerialized)
            {
                If(LEqual(STOR, One))
                {
                    Return(CPCC)
                }
                Else
                {
                    Return(FPCC)
                }
            }
            Method(SDMD, 0x0, NotSerialized)
            {
                Return(SDCC)
            }
            Name(CPCC, Package(0x1)
            {
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.UFS0",
                    Package(0x7)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x5)
                        {
                            "FSTATE",
                            Zero,
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    Zero,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    One,
                                    Zero
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    0x2,
                                    Zero
                                }
                            }
                        },
                        Package(0x5)
                        {
                            "FSTATE",
                            One,
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    0x2,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    One,
                                    One
                                }
                            },
                            Package(0x2)
                            {
                                "PSTATE_ADJUST",
                                Package(0x2)
                                {
                                    Zero,
                                    One
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "FOOTSWITCH",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_gdsc",
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "FOOTSWITCH",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_gdsc",
                                        0x2
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            One,
                            Package(0xd)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x4)
                                    {
                                        "gcc_ufs_phy_axi_clk",
                                        0x8,
                                        0x11e1a300,
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x4)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk",
                                        0x8,
                                        0x11e1a300,
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_ice_core_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x3)
                                    {
                                        "gcc_ufs_phy_ice_core_clk",
                                        0x9,
                                        0x12
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x4)
                                    {
                                        "gcc_ufs_phy_ice_core_clk",
                                        0x3,
                                        0x11e1a300,
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_ahb_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk",
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk",
                                        One
                                    }
                                }
                            },
                            Package(0xb)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_aggre_ufs_phy_axi_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_ahb_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_phy_aux_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_tx_symbol_0_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_rx_symbol_0_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_rx_symbol_1_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_ice_core_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_unipro_core_clk",
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_ufs_phy_axi_clk",
                                        0x2
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x2,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            }
                        }
                    },
                    Package(0x6)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "DELAY",
                            Package(0x1)
                            {
                                0x23
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                Zero
                            }
                        }
                    },
                    Package(0x5)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                One
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    }
                }
            })
            Name(FPCC, Package(0x1)
            {
                Package(0x6)
                {
                    "DEVICE",
                    "\\_SB.UFS0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "PRELOAD_DSTATE",
                        0x3
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x4)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO6_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO17_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    }
                }
            })
            Name(SDCC, Package(0x1)
            {
                Package(0x7)
                {
                    "DEVICE",
                    "\\_SB.SDC2",
                    Package(0x9)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        },
                        Package(0x19)
                        {
                            "PSTATE_SET",
                            Zero,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x2,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x3,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x4,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x5,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x6,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x7,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x8,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x9,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xb,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xc,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xd,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xe,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0xf,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x10,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x11,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x12,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x13,
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        One
                                    }
                                }
                            },
                            Package(0x8)
                            {
                                "PSTATE",
                                0x14,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        0x2d2a80,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x2d0370,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE",
                                0x15,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x1b7740,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                0x16,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        0x2d2a80,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        0x2d0370,
                                        One,
                                        0x7,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            },
                            Package(0x5)
                            {
                                "PSTATE",
                                0x17,
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO9_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "PMICVREGVOTE",
                                    Package(0x6)
                                    {
                                        "PPP_RESOURCE_ID_LDO6_C",
                                        One,
                                        Zero,
                                        Zero,
                                        Zero,
                                        Zero
                                    }
                                },
                                Package(0x2)
                                {
                                    "DELAY",
                                    Package(0x1)
                                    {
                                        0x23
                                    }
                                }
                            }
                        },
                        Package(0x5)
                        {
                            "PSTATE_SET",
                            One,
                            Package(0x2)
                            {
                                "PSTATE",
                                Zero
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                One
                            },
                            Package(0x2)
                            {
                                "PSTATE",
                                0x2
                            }
                        },
                        Package(0x5)
                        {
                            "PSTATE_SET",
                            0x2,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        0x17d78400,
                                        0xbebc200
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        0xbebc200,
                                        0x5f5e100
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                0x2,
                                Package(0x2)
                                {
                                    "BUSARB",
                                    Package(0x5)
                                    {
                                        0x3,
                                        "ICBID_MASTER_SDCC_2",
                                        "ICBID_SLAVE_EBI1",
                                        Zero,
                                        Zero
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x3,
                            Package(0x4)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        One,
                                        0x2
                                    }
                                },
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        0x2,
                                        Zero
                                    }
                                }
                            },
                            Package(0x4)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        One,
                                        One
                                    }
                                },
                                Package(0x2)
                                {
                                    "PSTATE_ADJUST",
                                    Package(0x2)
                                    {
                                        0x2,
                                        One
                                    }
                                }
                            }
                        },
                        Package(0x4)
                        {
                            "PSTATE_SET",
                            0x4,
                            Package(0x3)
                            {
                                "PSTATE",
                                Zero,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_ahb_clk",
                                        One
                                    }
                                }
                            },
                            Package(0x3)
                            {
                                "PSTATE",
                                One,
                                Package(0x2)
                                {
                                    "CLOCK",
                                    Package(0x2)
                                    {
                                        "gcc_sdcc2_ahb_clk",
                                        0x2
                                    }
                                }
                            }
                        }
                    },
                    Package(0x7)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                0x16
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMPORT",
                            Package(0x3)
                            {
                                0xb7000,
                                0x7fff,
                                0x1fe4
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                0x2
                            }
                        }
                    },
                    Package(0x7)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x4,
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                0x2,
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMPORT",
                            Package(0x3)
                            {
                                0xb7000,
                                0x7fff,
                                0xa00
                            }
                        },
                        Package(0x2)
                        {
                            "PSTATE_ADJUST",
                            Package(0x2)
                            {
                                Zero,
                                0x17
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_EXCEPTION",
                        Package(0x2)
                        {
                            "EXECUTE_FUNCTION",
                            Package(0x1)
                            {
                                "ExecuteOcdSdCardExceptions"
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    }
                }
            })
        }
        Scope(\_SB_.PEP0)
        {
            Method(PEMD, 0x0, NotSerialized)
            {
                Return(PEMC)
            }
            Name(PEMC, Package(0x6)
            {
                Package(0xb)
                {
                    "DEVICE",
                    "\\_SB.PCI0",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x19)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x14,
                                One,
                                Zero,
                                One,
                                0x3,
                                0x4
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS5_A",
                                0x2,
                                0x1cfde0,
                                One,
                                0x6,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS6_A",
                                0x2,
                                0xe7ef0,
                                One,
                                0x6,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS8_C",
                                0x2,
                                0x13d620,
                                One,
                                0x6,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS4_A",
                                0x2,
                                0x1b7740,
                                One,
                                0x6,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_0_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_0_CFG",
                                0x47868c0,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_0",
                                "ICBID_SLAVE_EBI1",
                                0xb2d05e00,
                                0xb2d05e00
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_0_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_aux_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_slv_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_slv_q2a_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_mstr_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_cfg_ahb_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_wifi_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie_0_aux_clk",
                                0x8,
                                0x124f800,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie0_phy_refgen_clk",
                                0x8,
                                0x5f5e100,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x7)
                            {
                                0x50,
                                Zero,
                                One,
                                Zero,
                                0x3,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x16)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_slv_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_slv_q2a_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_mstr_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_cfg_ahb_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie0_phy_refgen_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_0_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_wifi_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_0_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                0x2,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_0_CFG",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_0",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_0_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS5_A",
                                0x2,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS6_A",
                                0x2,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS8_C",
                                0x2,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_SMPS4_A",
                                0x2,
                                Zero,
                                Zero,
                                0x4,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_EXCEPTION",
                        Package(0x2)
                        {
                            "EXECUTE_FUNCTION",
                            Package(0x1)
                            {
                                "ExecuteOcdPCIeExceptions"
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "PRELOAD_DSTATE",
                        Zero
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.PCI0.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    }
                },
                Package(0xb)
                {
                    "DEVICE",
                    "\\_SB.PCI1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x14)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_1_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_1_CFG",
                                0x47868c0,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_1",
                                "ICBID_SLAVE_EBI1",
                                0xb2d05e00,
                                0xb2d05e00
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_1_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_aux_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_slv_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_mstr_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_cfg_ahb_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_wigig_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie_1_aux_clk",
                                0x8,
                                0x124f800,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie1_phy_refgen_clk",
                                0x8,
                                0x5f5e100,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x7)
                            {
                                0x50,
                                Zero,
                                One,
                                Zero,
                                0x3,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x12)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_slv_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_slv_q2a_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_mstr_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_cfg_ahb_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie1_phy_refgen_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_1_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_wigig_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_1_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                0x2,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_1_CFG",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_1",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_1_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_EXCEPTION",
                        Package(0x2)
                        {
                            "EXECUTE_FUNCTION",
                            Package(0x1)
                            {
                                "ExecuteOcdPCIeExceptions"
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "PRELOAD_DSTATE",
                        Zero
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.PCI1.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    }
                },
                Package(0xb)
                {
                    "DEVICE",
                    "\\_SB.PCI2",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x14)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                0x124f80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                0xd6d80,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_2_gdsc",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_2_CFG",
                                0x47868c0,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_2",
                                "ICBID_SLAVE_EBI1",
                                0xb2d05e00,
                                0xb2d05e00
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_2_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_aux_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_pipe_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_slv_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_slv_q2a_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_mstr_axi_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_cfg_ahb_clk",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_mdm_clkref_en",
                                One
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie_2_aux_clk",
                                0x8,
                                0x124f800,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x4)
                            {
                                "gcc_pcie2_phy_refgen_clk",
                                0x8,
                                0x5f5e100,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x7)
                            {
                                0x50,
                                Zero,
                                One,
                                Zero,
                                0x3,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x12)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_aux_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_slv_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_slv_q2a_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_mstr_axi_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_ddrss_pcie_sf_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_cfg_ahb_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie2_phy_refgen_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_2_pipe_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_pcie_mdm_clkref_en",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x2)
                            {
                                "gcc_aggre_noc_pcie_tbu_clk",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "CLOCK",
                            Package(0x9)
                            {
                                "gcc_pcie_2_pipe_clk",
                                0x6,
                                Zero,
                                Zero,
                                0x2,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_APPSS_PROC",
                                "ICBID_SLAVE_PCIE_2_CFG",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "BUSARB",
                            Package(0x5)
                            {
                                0x3,
                                "ICBID_MASTER_PCIE_2",
                                "ICBID_SLAVE_EBI1",
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "FOOTSWITCH",
                            Package(0x2)
                            {
                                "gcc_pcie_2_gdsc",
                                0x2
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO9_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO5_A",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_EXCEPTION",
                        Package(0x2)
                        {
                            "EXECUTE_FUNCTION",
                            Package(0x1)
                            {
                                "ExecuteOcdPCIeExceptions"
                            }
                        }
                    },
                    Package(0x2)
                    {
                        "CRASHDUMP_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "PRELOAD_DSTATE",
                        Zero
                    }
                },
                Package(0x8)
                {
                    "DEVICE",
                    "\\_SB.PCI2.RP1",
                    Package(0x4)
                    {
                        "COMPONENT",
                        Zero,
                        Package(0x2)
                        {
                            "FSTATE",
                            Zero
                        },
                        Package(0x2)
                        {
                            "FSTATE",
                            One
                        }
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        Zero
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        One
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x2
                    },
                    Package(0x2)
                    {
                        "DSTATE",
                        0x3
                    },
                    Package(0x2)
                    {
                        "ABANDON_DSTATE",
                        Zero
                    }
                }
            })
        }
        Device(WLDS)
        {
            Name(_HID, "QCOM25D0")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.PEP0)
        {
            Method(LPMX, 0x0, NotSerialized)
            {
                Return(LPXC)
            }
            Name(LPXC, Package(0x1)
            {
                Package(0x4)
                {
                    "DEVICE",
                    "\\_SB.TSC1",
                    Package(0x8)
                    {
                        "DSTATE",
                        Zero,
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO10_C",
                                One,
                                0x2dc6c0,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO1_C",
                                One,
                                0x1b7740,
                                One,
                                0x7,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x27,
                                Zero,
                                Zero,
                                Zero,
                                0x3,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x21,
                                Zero,
                                Zero,
                                One,
                                0x3,
                                0x3
                            }
                        },
                        Package(0x2)
                        {
                            "DELAY",
                            Package(0x1)
                            {
                                0x64
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x21,
                                One,
                                Zero,
                                One,
                                0x3,
                                0x3
                            }
                        }
                    },
                    Package(0x6)
                    {
                        "DSTATE",
                        0x3,
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x21,
                                Zero,
                                Zero,
                                One,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "TLMMGPIO",
                            Package(0x6)
                            {
                                0x27,
                                Zero,
                                Zero,
                                Zero,
                                One,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO10_C",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        },
                        Package(0x2)
                        {
                            "PMICVREGVOTE",
                            Package(0x6)
                            {
                                "PPP_RESOURCE_ID_LDO1_C",
                                One,
                                Zero,
                                Zero,
                                Zero,
                                Zero
                            }
                        }
                    }
                }
            })
        }
        Device(BAM1)
        {
            Name(_HID, "QCOM250A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xdc, 0x01, 0x00, 0x40, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x30, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAM5)
        {
            Name(_HID, "QCOM250A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x5)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0xa8, 0x03, 0x00, 0x20, 0x03, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc4, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAMD)
        {
            Name(_HID, "QCOM250A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xd)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x90, 0x0a, 0x00, 0x70, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x4c, 0x03, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAME)
        {
            Name(_HID, "QCOM250A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xe)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x06, 0x06, 0x00, 0x50, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc7, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(BAMF)
        {
            Name(_HID, "QCOM250A")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xf)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x70, 0x0a, 0x00, 0x70, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xa4, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(I2C2)
        {
            Name(_HID, "QCOM2510")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x2)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x98, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7a, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(SPI3)
        {
            Name(_HID, "QCOM250E")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x3)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.QGP0,
                \_SB_.MMU0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x80, 0x98, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7b, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(I2C4)
        {
            Name(_HID, "QCOM2510")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x4)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x33, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0xc0, 0x98, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7c, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(SPI5)
        {
            Name(_HID, "QCOM250E")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x5)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.QGP0,
                \_SB_.MMU0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x34, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x99, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7d, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(UAR7)
        {
            Name(_HID, "QCOM2516")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x7)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x22)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x30, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x36, 0x00, 0x2c, 0x00, 0x34, 0x00,
	0x57, 0x00, 0x2c, 0x00, 0x42, 0x00, 0x54, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x3a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x80, 0x99, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x7f, 0x02, 0x00, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x13, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(IC12)
        {
            Name(_HID, "QCOM2510")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xc)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x33, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0xc0, 0xa8, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x84, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(UARD)
        {
            Name(_HID, "QCOM2516")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0xd)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x1e)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x34, 0x00, 0x2c, 0x00, 0x44, 0x00,
	0x42, 0x00, 0x47, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x3a)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xa9, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x85, 0x01, 0x00, 0x00, 0x8c, 0x20, 0x00,
	0x01, 0x00, 0x01, 0x00, 0x03, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17,
	0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x23, 0x00, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(IC16)
        {
            Name(_HID, "QCOM2510")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x10)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x31, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x40, 0x88, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x67, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(IC17)
        {
            Name(_HID, "QCOM2510")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x11)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(_CCA, Zero)
            Name(_STR, Buffer(0x16)
            {
	0x51, 0x00, 0x55, 0x00, 0x50, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x5f, 0x00,
	0x53, 0x00, 0x45, 0x00, 0x5f, 0x00, 0x32, 0x00, 0x00, 0x00
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x80, 0x88, 0x00, 0x00, 0x40, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x95, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(RPEN)
        {
            Name(_HID, "QCOM25E1")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(PILC)
        {
            Name(_HID, "QCOM25E0")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(CDI_)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PILC,
                \_SB_.RPEN
            })
            Name(_HID, "QCOM252F")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SCSS)
        {
            Name(_DEP, Package(0x7)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM251F")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x09, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(ADSP)
        {
            Name(_DEP, Package(0x7)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM251B")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x06, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Device(SLM1)
            {
                Name(_ADR, Zero)
                Name(_CCA, Zero)
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x17)
                    {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xac, 0x03, 0x00, 0xc0, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0xc3, 0x00, 0x00, 0x00, 0x79, 0x00
                    })
                    Return(RBUF)
                }
            }
            Device(ADCM)
            {
                Alias(\_SB_.PSUB, _SUB)
                Name(_ADR, One)
                Name(_DEP, Package(0x2)
                {
                    \_SB_.MMU0,
                    \_SB_.IMM0
                })
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Method(CHLD, 0x0, NotSerialized)
                {
                    Return(Package(0x1)
                    {
                        "ADCM\\QCOM2523"
                    })
                }
                Device(AUDD)
                {
                    Name(_ADR, Zero)
                    Alias(\_SB_.PSUB, _SUB)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Method(_CRS, 0x0, NotSerialized)
                    {
                        Name(RBUF, Buffer(0x63)
                        {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x40, 0x06,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x20,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x89,
	0x06, 0x00, 0x03, 0x01, 0x49, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03,
	0x01, 0x4a, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xea, 0x00,
	0x00, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x15, 0x00, 0x02,
	0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00,
	0x00, 0x00, 0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30,
	0x00, 0x79, 0x00
                        })
                        Return(RBUF)
                    }
                    Method(CHLD, 0x0, NotSerialized)
                    {
                        Name(CH__, Package(0x2)
                        {
                            "AUDD\\QCOM2534",
                            "AUDD\\QCOM2529"
                        })
                        Return(CH__)
                    }
                    Device(MBHC)
                    {
                        Name(_ADR, Zero)
                        Method(_CRS, 0x0, NotSerialized)
                        {
                            Name(RBUF, Buffer(0x2)
                            {
	0x79, 0x00
                            })
                            Return(RBUF)
                        }
                    }
                    Device(QCRT)
                    {
                        Name(_ADR, One)
                    }
                }
            }
        }
        Device(SSDD)
        {
            Name(_HID, "QCOM2520")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.GLNK,
                \_SB_.PDSR,
                \_SB_.TFTP
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(PDSR)
        {
            Name(_HID, "QCOM25DF")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.GLNK,
                \_SB_.IPC0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(NSP0)
        {
            Name(_DEP, Package(0x7)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.GLNK,
                \_SB_.IPC0,
                \_SB_.RPEN,
                \_SB_.SSDD,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM25B0")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xb)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x62, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(CSW0)
        {
            Name(_HID, "QCOM25C3")
            Name(_CID, "QCOMFFE0")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x2)
            {
                \_SB_.NSP0,
                \_SB_.SBTD
            })
        }
        Device(SBTD)
        {
            Name(_HID, "QCOM25E5")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(SPSS)
        {
            Name(_DEP, Package(0x4)
            {
                \_SB_.PEP0,
                \_SB_.PILC,
                \_SB_.RPEN,
                \_SB_.GLNK
            })
            Name(_HID, "QCOM258D")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x47)
                {
	0x89, 0x06, 0x00, 0x01, 0x01, 0x80, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x28, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x24, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x1c, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x3c, 0x10, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x0c, 0x20, 0x88, 0x01, 0x04, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(TFTP)
        {
            Name(_HID, "QCOM25DC")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(One)
            {
                \_SB_.IPC0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QCSK)
        {
            Name(_HID, "QCOM25AC")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
        }
        Scope(\_SB_.ADSP)
        {
        }
        Scope(\_SB_.SCSS)
        {
        }
        Scope(\_SB_.PILC)
        {
        }
        Scope(\_SB_.CDI_)
        {
        }
        Scope(\_SB_.RPEN)
        {
        }
        Scope(\_SB_.NSP0)
        {
            Name(_CID, "QCOMFFE7")
        }
        Device(LLC_)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_HID, "QCOM2583")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x17)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x60, 0x09, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x2a, 0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(MMU0)
        {
            Name(_HID, "QCOM2509")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x257)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x10, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x81, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x82, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x83,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x84, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x85, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x86, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x87,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x88, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x89, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x8a, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8b,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8c, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x8d, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x8e, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x8f,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x90, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x91, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x92, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x93,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x94, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x95, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x96, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd5,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd6, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xd7, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xd8, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xd9,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xda, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xdb, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xdc, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xdd,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xde, 0x00, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xdf, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xe0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5b,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5c, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x5d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x5e, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x5f,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x60, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x61, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x62, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x63,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x64, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x65, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x66, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x67,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x68, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x69, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x6a, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6b,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6c, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x6d, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x6e, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x6f,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x70, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x71, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x72, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x73,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x74, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x75, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x76, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x77,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x78, 0x01, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0x79, 0x01, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(MMU1)
        {
            Name(_HID, "QCOM2509")
            Name(_UID, One)
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.SVMJ, _HRV)
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x56)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xda, 0x03, 0x00, 0x00, 0x02, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xc6, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xc7, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xc8,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xc9, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x03, 0x01, 0xca, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0xcb, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xcc,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xcd, 0x02, 0x00, 0x00,
	0x79, 0x00
                })
            }
        }
        Device(IMM0)
        {
            Name(_HID, "QCOM258F")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(IMM1)
        {
            Name(_HID, "QCOM258F")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(GPU0)
        {
            Name(_HID, "QCOM2536")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CLS, 0x3000000000000)
            Device(MON0)
            {
                Method(_ADR, 0x0, NotSerialized)
                {
                    Return(Zero)
                }
            }
            Name(_DEP, Package(0xa)
            {
                \_SB_.MMU0,
                \_SB_.MMU1,
                \_SB_.IMM0,
                \_SB_.IMM1,
                \_SB_.PEP0,
                \_SB_.PMIC,
                \_SB_.PILC,
                \_SB_.RPEN,
                \_SB_.TREE,
                \_SB_.SCM0
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(ABUF, Buffer(0xb8)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0xe0, 0x0a, 0x00, 0x00, 0x20, 0x00,
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x8e, 0x08, 0x00, 0x00, 0x01, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x73, 0x00, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xd0, 0x03, 0x10, 0xf0, 0x03, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0xd6, 0x03, 0x00, 0xf0, 0x03, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x4c, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x29, 0x0b, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x49, 0x0b, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0xd9, 0x03, 0x00, 0x90, 0x00, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0xde, 0x03, 0x00, 0x00, 0x01, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0x20, 0x0c, 0xff, 0xff, 0x00, 0x00, 0x86, 0x09, 0x00, 0x01, 0x00, 0x00,
	0xa0, 0x0a, 0x00, 0x00, 0x20, 0x00, 0x89, 0x06, 0x00, 0x01, 0x01, 0xce,
	0x00, 0x00, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00,
	0x00, 0x00, 0x26, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f,
	0x30, 0x00, 0x79, 0x00
                })
                Return(ABUF)
            }
            Method(RESI, 0x0, NotSerialized)
            {
                Name(AINF, Package(0x10)
                {
                    0x3,
                    Zero,
                    Package(0x3)
                    {
                        "RESOURCE",
                        "MDP_REGS",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "DP_PHY_REGS",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VSYNC_INTERRUPT",
                        "DISPLAY"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_REGS",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_REG_CONT",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GFX_INTERRUPT",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_PDC_SEQ_MEM",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_PDC_REGS",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_CC",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_RSCC",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "GPU_RPMH_CPRF",
                        "GRAPHICS"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VIDEO_REGS",
                        "VIDEO"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "VIDC_INTERRUPT",
                        "VIDEO"
                    },
                    Package(0x3)
                    {
                        "RESOURCE",
                        "DSI_PANEL_RESET",
                        "DISPLAY"
                    }
                })
                Return(AINF)
            }
            Method(_ROM, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x154a)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d,
	0x65, 0x3e, 0x41, 0x4d, 0x53, 0x36, 0x36, 0x37, 0x78, 0x78, 0x30, 0x31,
	0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x4e, 0x61, 0x6d, 0x65, 0x3e,
	0x0a, 0x3c, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x44, 0x65, 0x73, 0x63, 0x72,
	0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x53, 0x61, 0x6d, 0x73, 0x75,
	0x6e, 0x67, 0x20, 0x44, 0x53, 0x49, 0x20, 0x43, 0x6f, 0x6d, 0x6d, 0x61,
	0x6e, 0x64, 0x20, 0x4d, 0x6f, 0x64, 0x65, 0x20, 0x50, 0x61, 0x6e, 0x65,
	0x6c, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x44, 0x53, 0x43, 0x20, 0x28,
	0x31, 0x30, 0x38, 0x30, 0x78, 0x32, 0x34, 0x30, 0x30, 0x20, 0x32, 0x34,
	0x62, 0x70, 0x70, 0x29, 0x3c, 0x2f, 0x50, 0x61, 0x6e, 0x65, 0x6c, 0x44,
	0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a,
	0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x45,
	0x44, 0x49, 0x44, 0x20, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x75, 0x72,
	0x61, 0x74, 0x69, 0x6f, 0x6e, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65,
	0x49, 0x44, 0x3e, 0x30, 0x78, 0x31, 0x30, 0x34, 0x44, 0x3c, 0x2f, 0x4d,
	0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75, 0x72, 0x65, 0x49, 0x44,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x50, 0x72, 0x6f, 0x64, 0x75,
	0x63, 0x74, 0x43, 0x6f, 0x64, 0x65, 0x3e, 0x38, 0x35, 0x30, 0x3c, 0x2f,
	0x50, 0x72, 0x6f, 0x64, 0x75, 0x63, 0x74, 0x43, 0x6f, 0x64, 0x65, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x53, 0x65, 0x72, 0x69, 0x61, 0x6c,
	0x4e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x3e, 0x30, 0x78, 0x30, 0x30, 0x30,
	0x30, 0x30, 0x31, 0x3c, 0x2f, 0x53, 0x65, 0x72, 0x69, 0x61, 0x6c, 0x4e,
	0x75, 0x6d, 0x62, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x57, 0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61,
	0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x30, 0x31, 0x3c, 0x2f,
	0x57, 0x65, 0x65, 0x6b, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61,
	0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x59, 0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61,
	0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x30, 0x78, 0x31, 0x42, 0x3c, 0x2f,
	0x59, 0x65, 0x61, 0x72, 0x6f, 0x66, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61,
	0x63, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x45, 0x44, 0x49, 0x44, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x3e,
	0x31, 0x3c, 0x2f, 0x45, 0x44, 0x49, 0x44, 0x56, 0x65, 0x72, 0x73, 0x69,
	0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x44, 0x49,
	0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x3e, 0x34, 0x3c,
	0x2f, 0x45, 0x44, 0x49, 0x44, 0x52, 0x65, 0x76, 0x69, 0x73, 0x69, 0x6f,
	0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x69, 0x64, 0x65,
	0x6f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x44, 0x65, 0x66, 0x69, 0x6e, 0x69,
	0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x30, 0x78, 0x38, 0x30, 0x3c, 0x2f, 0x56,
	0x69, 0x64, 0x65, 0x6f, 0x49, 0x6e, 0x70, 0x75, 0x74, 0x44, 0x65, 0x66,
	0x69, 0x6e, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c,
	0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x3e, 0x30,
	0x78, 0x30, 0x37, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e,
	0x74, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74,
	0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69,
	0x7a, 0x65, 0x3e, 0x30, 0x78, 0x30, 0x46, 0x3c, 0x2f, 0x56, 0x65, 0x72,
	0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53,
	0x69, 0x7a, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x69,
	0x73, 0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66, 0x65,
	0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x69, 0x73,
	0x74, 0x69, 0x63, 0x73, 0x3e, 0x30, 0x78, 0x37, 0x38, 0x3c, 0x2f, 0x44,
	0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x66,
	0x65, 0x72, 0x43, 0x68, 0x61, 0x72, 0x61, 0x63, 0x74, 0x65, 0x72, 0x69,
	0x73, 0x74, 0x69, 0x63, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6f,
	0x72, 0x74, 0x3e, 0x30, 0x78, 0x32, 0x3c, 0x2f, 0x46, 0x65, 0x61, 0x74,
	0x75, 0x72, 0x65, 0x53, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x2e, 0x47, 0x72, 0x65,
	0x65, 0x6e, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x30, 0x78, 0x33, 0x30, 0x3c,
	0x2f, 0x52, 0x65, 0x64, 0x2e, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x42, 0x69,
	0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75,
	0x65, 0x2e, 0x57, 0x68, 0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3e,
	0x30, 0x78, 0x32, 0x33, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x2e, 0x57,
	0x68, 0x69, 0x74, 0x65, 0x42, 0x69, 0x74, 0x73, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x30, 0x78, 0x33, 0x30,
	0x3c, 0x2f, 0x52, 0x65, 0x64, 0x58, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x52, 0x65, 0x64, 0x59, 0x3e, 0x30, 0x78, 0x30, 0x35, 0x3c, 0x2f,
	0x52, 0x65, 0x64, 0x59, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x47,
	0x72, 0x65, 0x65, 0x6e, 0x58, 0x3e, 0x30, 0x78, 0x33, 0x41, 0x3c, 0x2f,
	0x47, 0x72, 0x65, 0x65, 0x6e, 0x58, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x30, 0x78, 0x30, 0x31,
	0x3c, 0x2f, 0x47, 0x72, 0x65, 0x65, 0x6e, 0x59, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x30, 0x78, 0x30,
	0x45, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x58, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x30, 0x78, 0x42,
	0x35, 0x3c, 0x2f, 0x42, 0x6c, 0x75, 0x65, 0x59, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3e, 0x30, 0x78,
	0x32, 0x45, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74, 0x65, 0x58, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x57, 0x68, 0x69, 0x74, 0x65, 0x59, 0x3e,
	0x30, 0x78, 0x30, 0x32, 0x3c, 0x2f, 0x57, 0x68, 0x69, 0x74, 0x65, 0x59,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x73, 0x74, 0x61, 0x62,
	0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67,
	0x73, 0x49, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f, 0x45, 0x73, 0x74, 0x61,
	0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d, 0x69, 0x6e,
	0x67, 0x73, 0x49, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x45, 0x73,
	0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54, 0x69, 0x6d,
	0x69, 0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x30, 0x78, 0x30, 0x3c, 0x2f,
	0x45, 0x73, 0x74, 0x61, 0x62, 0x6c, 0x69, 0x73, 0x68, 0x65, 0x64, 0x54,
	0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x49, 0x49, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75,
	0x72, 0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e, 0x30, 0x78,
	0x30, 0x3c, 0x2f, 0x4d, 0x61, 0x6e, 0x75, 0x66, 0x61, 0x63, 0x74, 0x75,
	0x72, 0x65, 0x73, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x31, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x32, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x33, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x34, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x35, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x36, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x74, 0x61, 0x6e, 0x64, 0x61, 0x72, 0x64,
	0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x73, 0x37, 0x2f, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x6c, 0x54, 0x69,
	0x6d, 0x69, 0x6e, 0x67, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63,
	0x65, 0x2f, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e,
	0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27,
	0x44, 0x65, 0x74, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x20, 0x54, 0x69, 0x6d,
	0x69, 0x6e, 0x67, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48,
	0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x63, 0x72,
	0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78,
	0x34, 0x35, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65,
	0x4d, 0x4d, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72,
	0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65, 0x65, 0x6e, 0x53,
	0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78, 0x39, 0x41, 0x3c, 0x2f,
	0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72, 0x65,
	0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63, 0x72,
	0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x30, 0x78,
	0x30, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x63,
	0x72, 0x65, 0x65, 0x6e, 0x53, 0x69, 0x7a, 0x65, 0x4d, 0x4d, 0x3e, 0x0a,
	0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c, 0x47, 0x72,
	0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x41, 0x63, 0x74, 0x69,
	0x76, 0x65, 0x20, 0x54, 0x69, 0x6d, 0x69, 0x6e, 0x67, 0x27, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e,
	0x74, 0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x31, 0x30,
	0x38, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61,
	0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e,
	0x31, 0x36, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74,
	0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72,
	0x63, 0x68, 0x3e, 0x38, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f,
	0x6e, 0x74, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72, 0x63,
	0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69,
	0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75,
	0x6c, 0x73, 0x65, 0x3e, 0x38, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c,
	0x73, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72,
	0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x53,
	0x6b, 0x65, 0x77, 0x3e, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69, 0x7a,
	0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65,
	0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48, 0x6f, 0x72, 0x69,
	0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65, 0x66, 0x74, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x48, 0x6f, 0x72, 0x69,
	0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x4c, 0x65, 0x66, 0x74, 0x42, 0x6f,
	0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x48,
	0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x52, 0x69, 0x67,
	0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f,
	0x48, 0x6f, 0x72, 0x69, 0x7a, 0x6f, 0x6e, 0x74, 0x61, 0x6c, 0x52, 0x69,
	0x67, 0x68, 0x74, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c,
	0x41, 0x63, 0x74, 0x69, 0x76, 0x65, 0x3e, 0x32, 0x34, 0x30, 0x30, 0x3c,
	0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x41, 0x63, 0x74,
	0x69, 0x76, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f,
	0x72, 0x63, 0x68, 0x3e, 0x38, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x42, 0x61, 0x63, 0x6b, 0x50, 0x6f, 0x72, 0x63, 0x68,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63,
	0x68, 0x3e, 0x34, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61,
	0x6c, 0x46, 0x72, 0x6f, 0x6e, 0x74, 0x50, 0x6f, 0x72, 0x63, 0x68, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63,
	0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65, 0x3e,
	0x34, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53,
	0x79, 0x6e, 0x63, 0x50, 0x75, 0x6c, 0x73, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53,
	0x79, 0x6e, 0x63, 0x53, 0x6b, 0x65, 0x77, 0x3e, 0x30, 0x3c, 0x2f, 0x56,
	0x65, 0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x53, 0x79, 0x6e, 0x63, 0x53,
	0x6b, 0x65, 0x77, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65,
	0x72, 0x74, 0x69, 0x63, 0x61, 0x6c, 0x54, 0x6f, 0x70, 0x42, 0x6f, 0x72,
	0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x54, 0x6f, 0x70, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f, 0x6d, 0x42, 0x6f, 0x72,
	0x64, 0x65, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x56, 0x65, 0x72, 0x74, 0x69,
	0x63, 0x61, 0x6c, 0x42, 0x6f, 0x74, 0x74, 0x6f, 0x6d, 0x42, 0x6f, 0x72,
	0x64, 0x65, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e,
	0x76, 0x65, 0x72, 0x74, 0x44, 0x61, 0x74, 0x61, 0x50, 0x6f, 0x6c, 0x61,
	0x72, 0x69, 0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f,
	0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x44, 0x61, 0x74, 0x61, 0x50, 0x6f,
	0x6c, 0x61, 0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x56, 0x73, 0x79, 0x6e, 0x63,
	0x50, 0x6f, 0x6c, 0x61, 0x69, 0x72, 0x74, 0x79, 0x3e, 0x46, 0x61, 0x6c,
	0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74, 0x56, 0x73,
	0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x69, 0x72, 0x74, 0x79, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x49, 0x6e, 0x76, 0x65, 0x72, 0x74,
	0x48, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61, 0x72, 0x69, 0x74,
	0x79, 0x3e, 0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x49, 0x6e, 0x76,
	0x65, 0x72, 0x74, 0x48, 0x73, 0x79, 0x6e, 0x63, 0x50, 0x6f, 0x6c, 0x61,
	0x72, 0x69, 0x74, 0x79, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42,
	0x6f, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x3e, 0x30,
	0x78, 0x30, 0x3c, 0x2f, 0x42, 0x6f, 0x72, 0x64, 0x65, 0x72, 0x43, 0x6f,
	0x6c, 0x6f, 0x72, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d,
	0x27, 0x44, 0x69, 0x73, 0x70, 0x6c, 0x61, 0x79, 0x20, 0x49, 0x6e, 0x74,
	0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x27, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x54,
	0x79, 0x70, 0x65, 0x3e, 0x39, 0x3c, 0x2f, 0x49, 0x6e, 0x74, 0x65, 0x72,
	0x66, 0x61, 0x63, 0x65, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,
	0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e,
	0x33, 0x3c, 0x2f, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65,
	0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e,
	0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x3e, 0x0a, 0x3c, 0x47,
	0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27, 0x44, 0x53, 0x49,
	0x20, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x27, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x42, 0x69, 0x74,
	0x43, 0x6c, 0x6f, 0x63, 0x6b, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6e,
	0x63, 0x79, 0x3e, 0x31, 0x31, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30,
	0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x42, 0x69, 0x74, 0x43, 0x6c, 0x6f,
	0x63, 0x6b, 0x46, 0x72, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x79, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43, 0x68, 0x61,
	0x6e, 0x6e, 0x65, 0x6c, 0x49, 0x64, 0x3e, 0x32, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x43, 0x68, 0x61, 0x6e, 0x6e, 0x65, 0x6c, 0x49, 0x64, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x56, 0x69, 0x72, 0x74,
	0x75, 0x61, 0x6c, 0x49, 0x64, 0x3e, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x56, 0x69, 0x72, 0x74, 0x75, 0x61, 0x6c, 0x49, 0x64, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6c, 0x6f, 0x72,
	0x46, 0x6f, 0x72, 0x6d, 0x61, 0x74, 0x3e, 0x33, 0x36, 0x3c, 0x2f, 0x44,
	0x53, 0x49, 0x43, 0x6f, 0x6c, 0x6f, 0x72, 0x46, 0x6f, 0x72, 0x6d, 0x61,
	0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x54,
	0x72, 0x61, 0x66, 0x66, 0x69, 0x63, 0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x31,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x72, 0x61, 0x66, 0x66, 0x69, 0x63,
	0x4d, 0x6f, 0x64, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44,
	0x53, 0x49, 0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e, 0x34, 0x3c, 0x2f, 0x44,
	0x53, 0x49, 0x4c, 0x61, 0x6e, 0x65, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x3c, 0x44, 0x53, 0x49, 0x52, 0x65, 0x66, 0x72, 0x65, 0x73, 0x68,
	0x52, 0x61, 0x74, 0x65, 0x3e, 0x30, 0x78, 0x37, 0x38, 0x30, 0x30, 0x30,
	0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x52, 0x65, 0x66, 0x72, 0x65, 0x73,
	0x68, 0x52, 0x61, 0x74, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x43, 0x6d, 0x64, 0x53, 0x77, 0x61, 0x70, 0x49, 0x6e,
	0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x3e, 0x46, 0x61, 0x6c, 0x73,
	0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6d, 0x64, 0x53, 0x77, 0x61,
	0x70, 0x49, 0x6e, 0x74, 0x65, 0x72, 0x66, 0x61, 0x63, 0x65, 0x3e, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x43, 0x6d, 0x64, 0x55,
	0x73, 0x69, 0x6e, 0x67, 0x54, 0x72, 0x69, 0x67, 0x67, 0x65, 0x72, 0x3e,
	0x46, 0x61, 0x6c, 0x73, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6d,
	0x64, 0x55, 0x73, 0x69, 0x6e, 0x67, 0x54, 0x72, 0x69, 0x67, 0x67, 0x65,
	0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x54,
	0x45, 0x43, 0x68, 0x65, 0x63, 0x6b, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x3e, 0x54, 0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54, 0x45,
	0x43, 0x68, 0x65, 0x63, 0x6b, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x54, 0x45, 0x55,
	0x73, 0x69, 0x6e, 0x67, 0x44, 0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65,
	0x64, 0x54, 0x45, 0x50, 0x69, 0x6e, 0x3e, 0x54, 0x72, 0x75, 0x65, 0x3c,
	0x2f, 0x44, 0x53, 0x49, 0x54, 0x45, 0x55, 0x73, 0x69, 0x6e, 0x67, 0x44,
	0x65, 0x64, 0x69, 0x63, 0x61, 0x74, 0x65, 0x64, 0x54, 0x45, 0x50, 0x69,
	0x6e, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x54,
	0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x53, 0x74, 0x61, 0x72, 0x74, 0x50,
	0x6f, 0x73, 0x3e, 0x32, 0x34, 0x30, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49,
	0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x53, 0x74, 0x61, 0x72, 0x74,
	0x50, 0x6f, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x49, 0x6e, 0x69, 0x74,
	0x56, 0x61, 0x6c, 0x3e, 0x32, 0x34, 0x30, 0x30, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x54, 0x45, 0x76, 0x53, 0x79, 0x6e, 0x63, 0x49, 0x6e, 0x69, 0x74,
	0x56, 0x61, 0x6c, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x54,
	0x72, 0x75, 0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x45,
	0x6e, 0x61, 0x62, 0x6c, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c,
	0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x61, 0x6a, 0x6f, 0x72, 0x3e,
	0x31, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x61, 0x6a,
	0x6f, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49,
	0x44, 0x53, 0x43, 0x4d, 0x69, 0x6e, 0x6f, 0x72, 0x3e, 0x31, 0x3c, 0x2f,
	0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x4d, 0x69, 0x6e, 0x6f, 0x72, 0x3e,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,
	0x53, 0x63, 0x72, 0x3e, 0x30, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53,
	0x43, 0x53, 0x63, 0x72, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44,
	0x53, 0x49, 0x44, 0x53, 0x43, 0x50, 0x72, 0x6f, 0x66, 0x69, 0x6c, 0x65,
	0x49, 0x44, 0x3e, 0x34, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43,
	0x50, 0x72, 0x6f, 0x66, 0x69, 0x6c, 0x65, 0x49, 0x44, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c,
	0x69, 0x63, 0x65, 0x57, 0x69, 0x64, 0x74, 0x68, 0x3e, 0x35, 0x34, 0x30,
	0x3c, 0x2f, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63,
	0x65, 0x57, 0x69, 0x64, 0x74, 0x68, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65,
	0x48, 0x65, 0x69, 0x67, 0x68, 0x74, 0x3e, 0x38, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x48, 0x65, 0x69,
	0x67, 0x68, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x50, 0x65, 0x72,
	0x50, 0x61, 0x63, 0x6b, 0x65, 0x74, 0x3e, 0x32, 0x3c, 0x2f, 0x44, 0x53,
	0x49, 0x44, 0x53, 0x43, 0x53, 0x6c, 0x69, 0x63, 0x65, 0x50, 0x65, 0x72,
	0x50, 0x61, 0x63, 0x6b, 0x65, 0x74, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6e, 0x74, 0x72, 0x6f, 0x6c, 0x6c,
	0x65, 0x72, 0x4d, 0x61, 0x70, 0x70, 0x69, 0x6e, 0x67, 0x3e, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x43, 0x6f, 0x6e, 0x74, 0x72,
	0x6f, 0x6c, 0x6c, 0x65, 0x72, 0x4d, 0x61, 0x70, 0x70, 0x69, 0x6e, 0x67,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x44, 0x53, 0x49, 0x4c, 0x50,
	0x31, 0x31, 0x41, 0x74, 0x49, 0x6e, 0x69, 0x74, 0x3e, 0x54, 0x72, 0x75,
	0x65, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x4c, 0x50, 0x31, 0x31, 0x41, 0x74,
	0x49, 0x6e, 0x69, 0x74, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75,
	0x70, 0x3e, 0x0a, 0x3c, 0x44, 0x53, 0x49, 0x49, 0x6e, 0x69, 0x74, 0x53,
	0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x30, 0x35, 0x20, 0x31, 0x31, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x46, 0x46, 0x20, 0x30, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x33, 0x35, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x39, 0x44, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x33, 0x39, 0x20, 0x39, 0x45, 0x20, 0x31, 0x31, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x38, 0x39, 0x20, 0x33, 0x30, 0x20, 0x38,
	0x30, 0x20, 0x30, 0x39, 0x20, 0x36, 0x30, 0x20, 0x30, 0x34, 0x20, 0x33,
	0x38, 0x20, 0x30, 0x30, 0x20, 0x30, 0x38, 0x20, 0x30, 0x32, 0x20, 0x31,
	0x43, 0x20, 0x30, 0x32, 0x20, 0x31, 0x43, 0x20, 0x30, 0x32, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x32, 0x20, 0x30, 0x45, 0x20, 0x30, 0x30, 0x20, 0x32,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x42, 0x42, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x37, 0x20, 0x30, 0x30, 0x20, 0x30, 0x43, 0x20, 0x30, 0x44, 0x20, 0x42,
	0x37, 0x20, 0x30, 0x43, 0x20, 0x42, 0x37, 0x20, 0x31, 0x38, 0x20, 0x30,
	0x30, 0x20, 0x31, 0x30, 0x20, 0x46, 0x30, 0x20, 0x30, 0x33, 0x20, 0x30,
	0x43, 0x20, 0x32, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x36, 0x20, 0x30,
	0x42, 0x20, 0x30, 0x42, 0x20, 0x33, 0x33, 0x20, 0x30, 0x45, 0x20, 0x31,
	0x43, 0x20, 0x32, 0x41, 0x20, 0x33, 0x38, 0x20, 0x34, 0x36, 0x20, 0x35,
	0x34, 0x20, 0x36, 0x32, 0x20, 0x36, 0x39, 0x20, 0x37, 0x30, 0x20, 0x37,
	0x37, 0x20, 0x37, 0x39, 0x20, 0x37, 0x42, 0x20, 0x37, 0x44, 0x20, 0x37,
	0x45, 0x20, 0x30, 0x31, 0x20, 0x30, 0x32, 0x20, 0x30, 0x31, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x39, 0x20, 0x34, 0x30, 0x20, 0x30, 0x39, 0x20, 0x42,
	0x45, 0x20, 0x31, 0x39, 0x20, 0x46, 0x43, 0x20, 0x31, 0x39, 0x20, 0x46,
	0x41, 0x20, 0x31, 0x39, 0x20, 0x46, 0x38, 0x20, 0x31, 0x41, 0x20, 0x33,
	0x38, 0x20, 0x31, 0x41, 0x20, 0x37, 0x38, 0x20, 0x31, 0x41, 0x20, 0x42,
	0x36, 0x20, 0x32, 0x41, 0x20, 0x46, 0x36, 0x20, 0x32, 0x42, 0x20, 0x33,
	0x34, 0x20, 0x32, 0x42, 0x20, 0x37, 0x34, 0x20, 0x33, 0x42, 0x20, 0x37,
	0x34, 0x20, 0x36, 0x42, 0x20, 0x46, 0x34, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30,
	0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x32, 0x41, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20,
	0x30, 0x34, 0x20, 0x33, 0x37, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x32, 0x42, 0x20, 0x30, 0x30, 0x20, 0x30, 0x30, 0x20, 0x30, 0x39,
	0x20, 0x35, 0x46, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,
	0x30, 0x20, 0x35, 0x41, 0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x42, 0x30, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x42, 0x37, 0x20, 0x34, 0x46, 0x0a, 0x20, 0x20,
	0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41,
	0x35, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20,
	0x35, 0x41, 0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x42, 0x30, 0x20, 0x30, 0x32, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x45, 0x43, 0x20, 0x30, 0x30, 0x20, 0x43, 0x30, 0x20, 0x43,
	0x33, 0x20, 0x34, 0x33, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x42, 0x30, 0x20, 0x30, 0x44, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x45, 0x43, 0x20, 0x31, 0x39, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x42, 0x30, 0x20, 0x30, 0x36, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x45, 0x34, 0x20, 0x44, 0x30, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35,
	0x41, 0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x42, 0x30, 0x20, 0x33, 0x36, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x44, 0x33, 0x20, 0x30, 0x46, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x46, 0x37, 0x20, 0x30, 0x33, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x41,
	0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,
	0x43, 0x20, 0x35, 0x41, 0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x42, 0x30, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x45, 0x34, 0x20, 0x41, 0x36, 0x20, 0x37, 0x35,
	0x20, 0x41, 0x33, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x45,
	0x39, 0x20, 0x31, 0x31, 0x20, 0x37, 0x35, 0x20, 0x41, 0x36, 0x20, 0x37,
	0x35, 0x20, 0x41, 0x33, 0x20, 0x38, 0x44, 0x20, 0x30, 0x36, 0x20, 0x32,
	0x30, 0x20, 0x38, 0x43, 0x20, 0x41, 0x32, 0x20, 0x34, 0x45, 0x20, 0x30,
	0x30, 0x20, 0x33, 0x32, 0x20, 0x33, 0x32, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x46, 0x43, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35,
	0x20, 0x41, 0x35, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46,
	0x30, 0x20, 0x35, 0x41, 0x20, 0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x33, 0x39, 0x20, 0x44, 0x46, 0x20, 0x38, 0x33, 0x20, 0x30, 0x30, 0x20,
	0x31, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42, 0x30,
	0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x45,
	0x36, 0x20, 0x30, 0x31, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x41, 0x20, 0x35, 0x41,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42, 0x30, 0x20, 0x30,
	0x38, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x44, 0x34, 0x20,
	0x30, 0x35, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30,
	0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x41, 0x20, 0x35, 0x41, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x43, 0x20, 0x35, 0x41, 0x20,
	0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42, 0x30,
	0x20, 0x31, 0x36, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x44,
	0x31, 0x20, 0x32, 0x45, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x46, 0x43, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a, 0x20, 0x20, 0x20,
	0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35,
	0x0a, 0x20, 0x20, 0x20, 0x20, 0x46, 0x46, 0x20, 0x35, 0x41, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x46, 0x30, 0x20, 0x35, 0x41, 0x20,
	0x35, 0x41, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42, 0x30,
	0x20, 0x30, 0x36, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x42,
	0x37, 0x20, 0x32, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x42, 0x30, 0x20, 0x30, 0x35, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x42, 0x37, 0x20, 0x39, 0x33, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33,
	0x39, 0x20, 0x46, 0x30, 0x20, 0x41, 0x35, 0x20, 0x41, 0x35, 0x0a, 0x20,
	0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x35, 0x33, 0x20, 0x32, 0x30, 0x0a,
	0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20, 0x35, 0x31, 0x20, 0x30, 0x30,
	0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30, 0x35, 0x20, 0x32,
	0x39, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39, 0x20,
	0x36, 0x30, 0x20, 0x31, 0x30, 0x0a, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x49,
	0x6e, 0x69, 0x74, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e,
	0x0a, 0x3c, 0x44, 0x53, 0x49, 0x54, 0x65, 0x72, 0x6d, 0x53, 0x65, 0x71,
	0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30,
	0x35, 0x20, 0x32, 0x38, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x46, 0x46, 0x20, 0x31, 0x34, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x33, 0x39,
	0x20, 0x35, 0x33, 0x20, 0x32, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x30,
	0x35, 0x20, 0x31, 0x30, 0x20, 0x30, 0x30, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x46, 0x46, 0x20, 0x37, 0x38, 0x0a, 0x3c, 0x2f, 0x44, 0x53, 0x49, 0x54,
	0x65, 0x72, 0x6d, 0x53, 0x65, 0x71, 0x75, 0x65, 0x6e, 0x63, 0x65, 0x3e,
	0x0a, 0x3c, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x20, 0x69, 0x64, 0x3d, 0x27,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x20, 0x43, 0x6f,
	0x6e, 0x66, 0x69, 0x67, 0x75, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x27,
	0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b, 0x6c,
	0x69, 0x67, 0x68, 0x74, 0x54, 0x79, 0x70, 0x65, 0x3e, 0x33, 0x3c, 0x2f,
	0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68, 0x74, 0x54, 0x79, 0x70,
	0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42, 0x61, 0x63, 0x6b,
	0x6c, 0x69, 0x67, 0x68, 0x74, 0x53, 0x74, 0x65, 0x70, 0x73, 0x3e, 0x31,
	0x30, 0x30, 0x3c, 0x2f, 0x42, 0x61, 0x63, 0x6b, 0x6c, 0x69, 0x67, 0x68,
	0x74, 0x53, 0x74, 0x65, 0x70, 0x73, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20,
	0x3c, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d,
	0x69, 0x6e, 0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e,
	0x33, 0x30, 0x30, 0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74,
	0x6e, 0x65, 0x73, 0x73, 0x4d, 0x69, 0x6e, 0x4c, 0x75, 0x6d, 0x69, 0x6e,
	0x61, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42,
	0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x4d, 0x61, 0x78,
	0x4c, 0x75, 0x6d, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x3e, 0x38, 0x30,
	0x30, 0x30, 0x30, 0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74,
	0x6e, 0x65, 0x73, 0x73, 0x4d, 0x61, 0x78, 0x4c, 0x75, 0x6d, 0x69, 0x6e,
	0x61, 0x6e, 0x63, 0x65, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x42,
	0x72, 0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x52, 0x61, 0x6e,
	0x67, 0x65, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x30, 0x3e, 0x33, 0x30, 0x30,
	0x30, 0x20, 0x38, 0x30, 0x30, 0x30, 0x30, 0x30, 0x20, 0x37, 0x39, 0x37,
	0x30, 0x20, 0x30, 0x3c, 0x2f, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e,
	0x65, 0x73, 0x73, 0x52, 0x61, 0x6e, 0x67, 0x65, 0x4c, 0x65, 0x76, 0x65,
	0x6c, 0x30, 0x3e, 0x0a, 0x20, 0x20, 0x20, 0x20, 0x3c, 0x41, 0x64, 0x61,
	0x70, 0x74, 0x69, 0x76, 0x65, 0x42, 0x72, 0x69, 0x67, 0x68, 0x74, 0x6e,
	0x65, 0x73, 0x73, 0x46, 0x65, 0x61, 0x74, 0x75, 0x72, 0x65, 0x3e, 0x31,
	0x3c, 0x2f, 0x41, 0x64, 0x61, 0x70, 0x74, 0x69, 0x76, 0x65, 0x42, 0x72,
	0x69, 0x67, 0x68, 0x74, 0x6e, 0x65, 0x73, 0x73, 0x46, 0x65, 0x61, 0x74,
	0x75, 0x72, 0x65, 0x3e, 0x0a, 0x3c, 0x2f, 0x47, 0x72, 0x6f, 0x75, 0x70,
	0x3e, 0x00
                })
                While(One)
                {
                    If(One)
                    {
                        Store(PCFG, Local2)
                    }
                    Break
                }
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(PGRT, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(One)
                {
	0x00
                })
                Return(RBUF)
            }
            Method(DEVT, 0x1, NotSerialized)
            {
                Notify(\_SB_.GPU0, Arg0)
            }
            Method(BLCP, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(0x100)
                {
                })
                Store(Zero, Local0)
                CreateField(RBUF, Multiply(Local0, 0x8, ), 0x20, PKHR)
                Add(Local0, 0x4, Local0)
                Multiply(Arg0, 0x3ff, Local1)
                Divide(Local1, 0xff, , Local1)
                Multiply(Arg0, 0x3ff, Local2)
                Divide(Local2, 0xff00, , Local2)
                And(Local2, 0x3, Local2)
                CreateField(RBUF, Multiply(Local0, 0x8, ), 0x8, PKCM)
                Add(Local0, One, Local0)
                CreateField(RBUF, Multiply(Local0, 0x8, ), 0x8, PKDS)
                Add(Local0, One, Local0)
                CreateField(RBUF, Multiply(Local0, 0x8, ), 0x8, PKUB)
                Add(Local0, One, Local0)
                CreateField(RBUF, Multiply(Local0, 0x8, ), 0x8, PKLB)
                Add(Local0, One, Local0)
                Store(0x4, PKHR)
                Store(0x39, PKCM)
                Store(0x51, PKDS)
                Store(Local1, PKUB)
                Store(Local2, PKLB)
                CreateDWordField(RBUF, Multiply(Local0, 0x8, ), EOP_)
                Store(Zero, EOP_)
                Return(RBUF)
            }
            Method(PBRT, 0x2, NotSerialized)
            {
                Name(RBUF, Buffer(One)
                {
	0x00
                })
                Return(RBUF)
            }
            Method(ROE1, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE2, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE3, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE4, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE5, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Method(ROE6, 0x3, NotSerialized)
            {
                Name(PCFG, Buffer(0x45)
                {
	0x3c, 0x3f, 0x78, 0x6d, 0x6c, 0x20, 0x76, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x3d, 0x27, 0x31, 0x2e, 0x30, 0x27, 0x20, 0x65, 0x6e, 0x63, 0x6f,
	0x64, 0x69, 0x6e, 0x67, 0x3d, 0x27, 0x75, 0x74, 0x66, 0x2d, 0x38, 0x27,
	0x3f, 0x3e, 0x0a, 0x3c, 0x44, 0x50, 0x45, 0x6e, 0x61, 0x62, 0x6c, 0x65,
	0x53, 0x53, 0x43, 0x3e, 0x31, 0x3c, 0x2f, 0x44, 0x50, 0x45, 0x6e, 0x61,
	0x62, 0x6c, 0x65, 0x53, 0x53, 0x43, 0x3e, 0x0a, 0x00
                })
                Store(PCFG, Local2)
                If(LNot(LLess(Arg0, SizeOf(Local2))))
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
                Else
                {
                    Store(Arg0, Local0)
                }
                If(LGreater(Arg1, 0x1000))
                {
                    Store(0x1000, Local1)
                }
                Else
                {
                    Store(Arg1, Local1)
                }
                If(LGreater(Add(Local0, Local1, ), SizeOf(Local2)))
                {
                    Subtract(SizeOf(Local2), Local0, Local1)
                }
                CreateField(Local2, Multiply(0x8, Local0, ), Multiply(0x8, Local1, ), RBUF)
                Return(RBUF)
            }
            Name(_DOD, Package(0x1)
            {
                0x24321
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_HRV, 0x0, NotSerialized)
            {
                Name(RESU, Zero)
                Name(TIER, Zero)
                Name(DREV, Zero)
                Name(FAMI, Zero)
                Name(PROD, Zero)
                And(\_SB_.SIDT, 0xf, TIER)
                And(ShiftRight(\_SB_.SJTG, 0x1c, ), 0xf, DREV)
                ShiftLeft(DREV, 0x4, DREV)
                And(ShiftRight(\_SB_.SJTG, 0xc, ), 0xffff, PROD)
                If(Or(LEqual(PROD, 0xc3), LEqual(PROD, 0xce), ))
                {
                    ShiftLeft(One, 0x8, FAMI)
                }
                Or(TIER, RESU, RESU)
                Or(DREV, RESU, RESU)
                Or(FAMI, RESU, RESU)
                Return(RESU)
            }
            Device(AVS0)
            {
                Name(_ADR, 0x24321)
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x2)
                    {
	0x79, 0x00
                    })
                    Return(RBUF)
                }
                Name(_DEP, Package(0x2)
                {
                    \_SB_.MMU0,
                    \_SB_.IMM0
                })
            }
            Method(CHDV, 0x0, NotSerialized)
            {
                Name(CHIF, Package(0x2)
                {
                    One,
                    Package(0x7)
                    {
                        "CHILDDEV",
                        Zero,
                        0x24321,
                        "QCOM_AVStream_8250",
                        Zero,
                        "Qualcomm Camera AVStream Mini Driver",
                        Package(0x4)
                        {
                            "COMPATIBLEIDS",
                            0x2,
                            "VEN_QCOM&DEV__AVSTREAM",
                            "QCOM_AVSTREAM"
                        }
                    }
                })
                Return(CHIF)
            }
            Method(_LID, 0x0, NotSerialized)
            {
                Return(One)
            }
        }
        Device(SCM0)
        {
            Name(_HID, "QCOM05DD")
            Name(_DEP, Package(0x1)
            {
                \_SB_.PEP0
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(TLOG)
        {
            Name(_HID, "QCOM25E4")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(TREE)
        {
            Name(_HID, "QCOM05DE")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xe)
                {
	0x86, 0x09, 0x00, 0x01, 0xef, 0xbe, 0xad, 0xde, 0xad, 0xde, 0xef, 0xbe,
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(SPMI)
        {
            Name(_HID, "QCOM250B")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "PNP0CA2")
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0xe)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x40, 0x0c, 0x00, 0x00, 0x80, 0x02,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(CONF, 0x0, NotSerialized)
            {
                Name(XBUF, Buffer(0x1a)
                {
	0x00, 0x01, 0x01, 0x01, 0xff, 0x00, 0x02, 0x00, 0x0a, 0x07, 0x04, 0x07,
	0x01, 0xff, 0x10, 0x01, 0x00, 0x01, 0x0c, 0x40, 0x00, 0x00, 0x02, 0x80,
	0x00, 0x00
                })
                Return(XBUF)
            }
        }
        Device(GIO0)
        {
            Name(_HID, "QCOM250C")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x56)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x10, 0x0f, 0x00, 0x00, 0xb0, 0x00,
	0x89, 0x06, 0x00, 0x09, 0x01, 0xf0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x09, 0x01, 0xf0, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x09, 0x01, 0xf0,
	0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x09, 0x01, 0x82, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x09, 0x01, 0x90, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x51, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x54,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x57, 0x02, 0x00, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(OFNI, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2)
                {
	0xb4, 0x00
                })
                Return(RBUF)
            }
            Name(GABL, Zero)
            Method(_REG, 0x2, NotSerialized)
            {
                If(LEqual(Arg0, 0x8))
                {
                    Store(Arg1, GABL)
                }
            }
            Method(_AEI, 0x0, NotSerialized)
            {
                Name(RBF0, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00,
	0xf4, 0x01, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x03,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                })
                Return(RBF0)
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x40, 0x8f, 0x24, 0x4f, 0xe2, 0xd5, 0x9f, 0x49, 0x83, 0x4c, 0x27, 0x75,
	0x8e, 0xa1, 0xcd, 0x3f
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(Arg2, _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(One)
                            {
	0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x1)
                                {
                                    0x100
                                })
                            }
                            Else
                            {
                                BreakPoint
                            }
                        }
                        Break
                    }
                }
                Else
                {
                    Return(Buffer(One)
                    {
	0x00
                    })
                }
            }
        }
        Device(IPCC)
        {
            Name(_HID, "QCOM25C2")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x26)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x05, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x06, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0x07,
	0x01, 0x00, 0x00, 0x89, 0x06, 0x00, 0x03, 0x01, 0xea, 0x02, 0x00, 0x00,
	0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(WWAN)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.PM01
            })
            Name(_HID, "QCOM25DA")
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Name(GMDM, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x4d,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Name(GMDR, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x50,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Name(GMDS, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x48,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79,
	0x00
            })
            Scope(\_SB_.PM01)
            {
                OperationRegion(MPON, GeneralPurposeIO, Zero, One)
                OperationRegion(PMDR, GeneralPurposeIO, Zero, One)
                OperationRegion(PMON, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.PM01.MPON, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDM),
                MPON, 1
            }
            Field(\_SB_.PM01.PMDR, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDR),
                PMDR, 1
            }
            Field(\_SB_.PM01.PMON, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.WWAN.GMDS),
                PMON, 1
            }
            Method(_MFF, 0x0, NotSerialized)
            {
                Store("Start SDX55 Power OFF Sequence", Debug)
                If(LOr(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PSUB, "QRD08250")))
                {
                    Sleep(0x190)
                    Store("Set GPIO 6D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.MPON)
                    Store("Set GPIO 9D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMDR)
                    Sleep(0xd7)
                    Store("Set GPIO 1D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMON)
                    Sleep(One)
                }
                Else
                {
                    Store("SDX55 Power OFF not supported for this form factor", Debug)
                }
                Store("End SDX55 Power OFF Sequence", Debug)
            }
            Method(_MNF, 0x0, NotSerialized)
            {
                Store("Start SDX55 Power OFF Sequence with 3000 ms delay.", Debug)
                If(LOr(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PSUB, "QRD08250")))
                {
                    Sleep(0x190)
                    Store("Set GPIO 6D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.MPON)
                    Store("Set GPIO 9D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMDR)
                    Sleep(0xbb8)
                    Store("Set GPIO 1D to Low", Debug)
                    Store(Zero, \_SB_.WWAN.PMON)
                    Sleep(One)
                }
                Else
                {
                    Store("SDX55 Power OFF not supported for this form factor", Debug)
                }
                Store("End SDX55 Power OFF Sequence", Debug)
            }
        }
        Scope(\_SB_.WWAN)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP2, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Device(QPPX)
        {
            Name(_HID, "QCOM2596")
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x4a)
                {
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x4f,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x55,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x01,
	0x79, 0x00
                })
                Return(RBUF)
            }
            Method(_QPG, 0x0, Serialized)
            {
                Return(Package(0x2)
                {
                    One,
                    One
                })
            }
            Name(GWLE, Buffer(0x25)
            {
	0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x14,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Scope(\_SB_.GIO0)
            {
                OperationRegion(WLEN, GeneralPurposeIO, Zero, One)
            }
            Field(\_SB_.GIO0.WLEN, ByteAcc, NoLock, Preserve)
            {
                Connection(\_SB_.QPPX.GWLE),
                WLEN, 1
            }
            Method(_RST, 0x1, Serialized)
            {
                While(One)
                {
                    Name(_T_0, 0x0)
                    Store(ToInteger(Arg0, ), _T_0)
                    If(LEqual(_T_0, Zero))
                    {
                        Store(Zero, \_SB_.QPPX.WLEN)
                        Sleep(0x5)
                        Store(One, \_SB_.QPPX.WLEN)
                        Sleep(0x5)
                        Store("Reset 0 pass", Debug)
                    }
                    Else
                    {
                        Store("Invalid PCIe port number passed to QPPX reset helper", Debug)
                    }
                    Break
                }
            }
        }
        Device(PCI0)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, Zero)
            Name(_SEG, Zero)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0xb5
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0xb6
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0xb7
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0xb8
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP0, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2c)
                {
	0x87, 0x17, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x70, 0x61, 0xff, 0xff, 0xff, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x90, 0x02, 0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x0f, 0x00, 0x00, 0x00, 0x10, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            One
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P0RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P0RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R0RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x40,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P0RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R0RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI1)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, One)
            Name(_SEG, One)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x1d2
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x1d3
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x1d6
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x1d7
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP1, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2c)
                {
	0x87, 0x17, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x10, 0x50, 0xff, 0xff, 0xff, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xf0, 0x0f, 0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xff, 0x00, 0x00, 0x00, 0x00, 0x01, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x2
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P1RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P1RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R1RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x80,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P1RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R1RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(PCI2)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.QPPX
            })
            Name(_HID, 0x80ad041)
            Name(_CID, 0x30ad041)
            Name(_UID, 0x2)
            Name(_SEG, 0x2)
            Name(_BBN, Zero)
            Name(_PRT, Package(0x4)
            {
                Package(0x4)
                {
                    0xffff,
                    Zero,
                    Zero,
                    0x142
                },
                Package(0x4)
                {
                    0xffff,
                    One,
                    Zero,
                    0x1bf
                },
                Package(0x4)
                {
                    0xffff,
                    0x2,
                    Zero,
                    0x1c0
                },
                Package(0x4)
                {
                    0xffff,
                    0x3,
                    Zero,
                    0x1c1
                }
            })
            Method(_CCA, 0x0, NotSerialized)
            {
                Return(One)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(PRP2, One))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(_PSC, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x2c)
                {
	0x87, 0x17, 0x00, 0x00, 0x0c, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x10, 0x50, 0xff, 0xff, 0xff, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xf0, 0x0f, 0x88, 0x0d, 0x00, 0x02, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xff, 0x00, 0x00, 0x00, 0x00, 0x01, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(SUPP, Zero)
            Name(CTRL, Zero)
            Method(_DSW, 0x3, NotSerialized)
            {
            }
            Method(_OSC, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0x5b, 0x4d, 0xdb, 0x33, 0xf7, 0x1f, 0x1c, 0x40, 0x96, 0x57, 0x74, 0x41,
	0xc0, 0x3d, 0xd7, 0x66
                }))
                {
                    CreateDWordField(Arg3, Zero, CDW1)
                    CreateDWordField(Arg3, 0x4, CDW2)
                    CreateDWordField(Arg3, 0x8, CDW3)
                    Store(CDW2, SUPP)
                    Store(CDW3, CTRL)
                    If(LNot(LEqual(And(SUPP, 0x16, ), 0x16)))
                    {
                        And(CTRL, 0x1e, CTRL)
                    }
                    And(CTRL, 0x15, CTRL)
                    If(LNot(LEqual(Arg1, One)))
                    {
                        Or(CDW1, 0x8, CDW1)
                    }
                    If(LNot(LEqual(CDW3, CTRL)))
                    {
                        Or(CDW1, 0x10, CDW1)
                    }
                    Store(CTRL, CDW3)
                    Return(Arg3)
                }
                Else
                {
                    Or(CDW1, 0x4, CDW1)
                    Return(Arg3)
                }
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                If(LEqual(Arg0, Buffer(0x10)
                {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                }))
                {
                    While(One)
                    {
                        Name(_T_0, 0x0)
                        Store(ToInteger(Arg2, ), _T_0)
                        If(LEqual(_T_0, Zero))
                        {
                            Return(Buffer(0x2)
                            {
	0xff, 0x03
                            })
                        }
                        Else
                        {
                            If(LEqual(_T_0, One))
                            {
                                Return(Package(0x2)
                                {
                                    Package(One)
                                    {
                                        One
                                    },
                                    Package(0x3)
                                    {
                                        Zero,
                                        One,
                                        One
                                    }
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x2))
                                {
                                    Return(Package(One)
                                    {
                                        Package(0x4)
                                        {
                                            One,
                                            0x3,
                                            Zero,
                                            0x7
                                        }
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x3))
                                    {
                                        Return(Package(One)
                                        {
                                            Zero
                                        })
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_0, 0x4))
                                        {
                                            Return(Package(0x2)
                                            {
                                                Package(One)
                                                {
                                                    Zero
                                                },
                                                Package(0x4)
                                                {
                                                    One,
                                                    0x3,
                                                    Zero,
                                                    0x7
                                                }
                                            })
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_0, 0x5))
                                            {
                                                Return(Package(One)
                                                {
                                                    One
                                                })
                                            }
                                            Else
                                            {
                                                If(LEqual(_T_0, 0x6))
                                                {
                                                    Return(Package(0x4)
                                                    {
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        },
                                                        Package(One)
                                                        {
                                                            Zero
                                                        }
                                                    })
                                                }
                                                Else
                                                {
                                                    If(LEqual(_T_0, 0x7))
                                                    {
                                                        Return(Package(One)
                                                        {
                                                            0x3
                                                        })
                                                    }
                                                    Else
                                                    {
                                                        If(LEqual(_T_0, 0x8))
                                                        {
                                                            Return(Package(One)
                                                            {
                                                                One
                                                            })
                                                        }
                                                        Else
                                                        {
                                                            If(LEqual(_T_0, 0x9))
                                                            {
                                                                Return(Package(0x5)
                                                                {
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    0xffffffff,
                                                                    Zero,
                                                                    0xffffffff
                                                                })
                                                            }
                                                            Else
                                                            {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        Break
                    }
                }
            }
            Name(_S0W, 0x4)
            Name(_PR0, Package(0x1)
            {
                \_SB_.P2RR
            })
            Name(_PR3, Package(0x1)
            {
                \_SB_.P2RR
            })
            Device(RP1_)
            {
                Method(_ADR, 0x0, Serialized)
                {
                    Return(Zero)
                }
                Name(_PR0, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_PR3, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_PRR, Package(0x1)
                {
                    \_SB_.R2RR
                })
                Name(_S0W, 0x4)
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0xc0, 0xe2, 0x11, 0x62, 0xa3, 0x58, 0xf3, 0x4a, 0x90, 0xe1, 0x92, 0x7a,
	0x4e, 0x0c, 0x55, 0xa4
                    },
                    Package(0x1)
                    {
                        Package(0x2)
                        {
                            "HotPlugSupportInD3",
                            One
                        }
                    }
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x25)
                    {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0xc0,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
                    })
                    Return(RBUF)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    If(LEqual(Arg0, Buffer(0x10)
                    {
	0xd0, 0x37, 0xc9, 0xe5, 0x53, 0x35, 0x7a, 0x4d, 0x91, 0x17, 0xea, 0x4d,
	0x19, 0xc3, 0x43, 0x4d
                    }))
                    {
                        While(One)
                        {
                            Name(_T_0, 0x0)
                            Store(ToInteger(Arg2, ), _T_0)
                            If(LEqual(_T_0, Zero))
                            {
                                Return(Buffer(0x2)
                                {
	0x01, 0x03
                                })
                            }
                            Else
                            {
                                If(LEqual(_T_0, 0x8))
                                {
                                    Return(Package(One)
                                    {
                                        One
                                    })
                                }
                                Else
                                {
                                    If(LEqual(_T_0, 0x9))
                                    {
                                        Return(Package(0x5)
                                        {
                                            0xffffffff,
                                            0xffffffff,
                                            0xffffffff,
                                            Zero,
                                            0xffffffff
                                        })
                                    }
                                    Else
                                    {
                                    }
                                }
                            }
                            Break
                        }
                    }
                }
            }
        }
        PowerResource(P2RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
        }
        PowerResource(R2RR, 0x5, 0x0)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Method(_ON_, 0x0, NotSerialized)
            {
            }
            Method(_OFF, 0x0, NotSerialized)
            {
            }
            Method(_RST, 0x0, NotSerialized)
            {
            }
        }
        Device(IPC0)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM250D")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(GLNK)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.IPCC,
                \_SB_.RPEN
            })
            Name(_HID, "QCOM2584")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
        }
        Device(ARPC)
        {
            Name(_DEP, Package(0x4)
            {
                \_SB_.MMU0,
                \_SB_.GLNK,
                \_SB_.SCM0,
                \_SB_.IMM0
            })
            Name(_HID, "QCOM255C")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(ARPD)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.ADSP,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM2582")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(QDIG)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.GLNK,
                \_SB_.IPC0
            })
            Name(_HID, "QCOM2513")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(SSM_)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.GLNK,
                \_SB_.TREE
            })
            Name(_HID, "QCOM2514")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(SYSM)
        {
            Name(_HID, "ACPI0010")
            Name(_UID, 0x100000)
            Name(_LPI, Package(0x4)
            {
                Zero,
                0x1000000,
                One,
                Package(0xa)
                {
                    0x251c,
                    0x1770,
                    One,
                    0x20,
                    Zero,
                    Zero,
                    0xb300,
                    Buffer(0x11)
                    {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                    },
                    Buffer(0x11)
                    {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                    },
                    "platform.DRIPS"
                }
            })
            Device(CLUS)
            {
                Name(_HID, "ACPI0010")
                Name(_UID, 0x10)
                Name(_LPI, Package(0x5)
                {
                    Zero,
                    0x1000000,
                    0x2,
                    Package(0xa)
                    {
                        0x170c,
                        0xbb8,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        0x20,
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        "L3Cluster.D2"
                    },
                    Package(0xa)
                    {
                        0x1770,
                        0xce4,
                        One,
                        Zero,
                        Zero,
                        One,
                        0x40,
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        Buffer(0x11)
                        {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                        },
                        "L3Cluster.D4"
                    }
                })
                Device(CPU0)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, Zero)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver0.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver0.C2"
                        },
                        Package(0xa)
                        {
                            0x6ee,
                            0x385,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver0.C3"
                        },
                        Package(0xa)
                        {
                            0xfa1,
                            0x393,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver0.C4"
                        }
                    })
                }
                Device(CPU1)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, One)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver1.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver1.C2"
                        },
                        Package(0xa)
                        {
                            0x6ee,
                            0x385,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver1.C3"
                        },
                        Package(0xa)
                        {
                            0xfa1,
                            0x393,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver1.C4"
                        }
                    })
                }
                Device(CPU2)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x2)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver2.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver2.C2"
                        },
                        Package(0xa)
                        {
                            0x6ee,
                            0x385,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver2.C3"
                        },
                        Package(0xa)
                        {
                            0xfa1,
                            0x393,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver2.C4"
                        }
                    })
                }
                Device(CPU3)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x3)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver3.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver3.C2"
                        },
                        Package(0xa)
                        {
                            0x6ee,
                            0x385,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver3.C3"
                        },
                        Package(0xa)
                        {
                            0xfa1,
                            0x393,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoSilver3.C4"
                        }
                    })
                }
                Device(CPU4)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x4)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold0.C4"
                        }
                    })
                }
                Device(CPU5)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x5)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold1.C4"
                        }
                    })
                }
                Device(CPU6)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x6)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C2"
                        },
                        Package(0xa)
                        {
                            0xf0a,
                            0x35c,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C3"
                        },
                        Package(0xa)
                        {
                            0xf6e,
                            0x38e,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoGold2.C4"
                        }
                    })
                }
                Device(CPU7)
                {
                    Name(_HID, "ACPI0007")
                    Name(_UID, 0x7)
                    Method(_STA, 0x0, NotSerialized)
                    {
                        Return(0xf)
                    }
                    Name(_LPI, Package(0x7)
                    {
                        Zero,
                        Zero,
                        0x4,
                        Package(0xa)
                        {
                            Zero,
                            Zero,
                            One,
                            Zero,
                            Zero,
                            Zero,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C1"
                        },
                        Package(0xa)
                        {
                            0x190,
                            0x64,
                            Zero,
                            Zero,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C2"
                        },
                        Package(0xa)
                        {
                            0xf96,
                            0x3e8,
                            One,
                            One,
                            Zero,
                            One,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x03, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C3"
                        },
                        Package(0xa)
                        {
                            0x118a,
                            0x5dc,
                            One,
                            One,
                            Zero,
                            0x2,
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x7f, 0x20, 0x00, 0x03, 0x04, 0x00, 0x00, 0x40, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            Buffer(0x11)
                            {
	0x82, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x79, 0x00
                            },
                            "KryoPrime0.C4"
                        }
                    })
                }
            }
        }
        Device(QGP0)
        {
            Name(_HID, "QCOM2588")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x20)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x30, 0x91, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x14, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x15, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(QGP1)
        {
            Name(_HID, "QCOM2588")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x20)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x30, 0xa1, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x37, 0x01, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x38, 0x01, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(QGP2)
        {
            Name(_HID, "QCOM2588")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, 0x2)
            Name(_CCA, Zero)
            Method(_CRS, 0x0, Serialized)
            {
                Name(RBUF, Buffer(0x20)
                {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x30, 0x81, 0x00, 0x00, 0x00, 0x05, 0x00,
	0x89, 0x06, 0x00, 0x01, 0x01, 0x6c, 0x02, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x01, 0x01, 0x6d, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(CSEC)
        {
            Name(_HID, "QCOM25A8")
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SOCP)
        {
            Name(_HID, "QCOM25DD")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.STOR, STOR)
        }
        Device(QDSS)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.MMU0
            })
            Name(_HID, "QCOM2556")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xb)
            }
            Method(_CRS, 0x0, NotSerialized)
            {
                Return(Buffer(0x38)
                {
	0x89, 0x06, 0x00, 0x03, 0x01, 0x2e, 0x01, 0x00, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0xa0, 0x04, 0x00, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x86, 0x09, 0x00,
	0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0xa0, 0x00, 0x89, 0x06, 0x00,
	0x03, 0x01, 0x43, 0x00, 0x00, 0x00, 0x79, 0x00
                })
            }
        }
        Device(QCSP)
        {
            Name(_DEP, Package(0x3)
            {
                \_SB_.GLNK,
                \_SB_.SOCP,
                \_SB_.SPSS
            })
            Name(_HID, "QCOM2587")
            Alias(\_SB_.PSUB, _SUB)
            Alias(\_SB_.STOR, STOR)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(QCDB)
        {
            Name(_HID, "QCOM25DE")
            Method(_SUB, 0x0, NotSerialized)
            {
                Return("AGN00000")
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(SERB)
        {
            Name(_HID, "QCOM05B2")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(RMNT)
        {
            Name(_HID, "QCOM2595")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(MBRG)
        {
            Name(_HID, "QCOM2507")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(RMAT)
        {
            Name(_HID, "QCOM2508")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(DPLB)
        {
            Name(_HID, "QCOM2570")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(DSBY)
        {
            Name(_HID, "QCOM25CD")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.SERB)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.PLST, Zero))
                {
                    Return(0xf)
                }
                Else
                {
                    Return(Zero)
                }
            }
        }
        Scope(\_SB_.RMNT)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Scope(\_SB_.MBRG)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Scope(\_SB_.RMAT)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Scope(\_SB_.DPLB)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Scope(\_SB_.DSBY)
        {
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(SSVC)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.IPC0,
                \_SB_.QDIG
            })
            Name(_HID, "QCOM25DB")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "ACPIQCOM25DB")
            Name(_UID, Zero)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Name(HWNL, Zero)
        Device(HWN0)
        {
            Name(_HID, "QCOM2568")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.HWNL, Zero))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Method(HWNL, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x10)
                {
                    0x2,
                    0x3,
                    0x19b,
                    0x14,
                    Zero,
                    Zero,
                    One,
                    One,
                    0x2,
                    0x2,
                    One,
                    One,
                    One,
                    0x3,
                    0x6,
                    One
                })
                Return(CFG0)
            }
        }
        Scope(\_SB_)
        {
            Device(WLTM)
            {
                Name(_HID, "QCOM25D5")
                Name(_CID, "QCOMFFE0")
                Alias(\_SB_.PSUB, _SUB)
                Name(_DEP, Package(0x3)
                {
                    \_SB_.PCI0,
                    \_SB_.SBTD,
                    \_SB_.IPC0
                })
            }
        }
        Device(SEN2)
        {
            Name(_DEP, Package(0x3)
            {
                \_SB_.IPC0,
                \_SB_.SCSS,
                \_SB_.ARPC
            })
            Name(_HID, "QCOM2593")
            Alias(\_SB_.PSUB, _SUB)
            Name(_CID, "QCOM2567")
            Name(_PLD, Package(0x1)
            {
                Buffer(0x14)
                {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x1c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                }
            })
        }
        Device(SARM)
        {
            Name(_HID, "QCOM25E2")
            Alias(\_SB_.PSUB, _SUB)
        }
        Scope(\_SB_.ADSP.ADCM.AUDD)
        {
            Device(SPK0)
            {
                Name(_HID, "CS35L41")
                Name(_UID, Zero)
                Name(_DEP, Package(0x2)
                {
                    \_SB_.GIO0,
                    \_SB_.I2C4
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x41)
                    {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x41, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x32, 0x43, 0x34, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x70, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                    })
                    Return(RBUF)
                }
            }
            Device(SPK1)
            {
                Name(_HID, "CS35L41")
                Name(_UID, One)
                Name(_DEP, Package(0x2)
                {
                    \_SB_.GIO0,
                    \_SB_.I2C4
                })
                Method(_CRS, 0x0, NotSerialized)
                {
                    Name(RBUF, Buffer(0x41)
                    {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0x80, 0x1a, 0x06, 0x00, 0x40, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x32, 0x43, 0x34, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x71, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                    })
                    Return(RBUF)
                }
            }
        }
        Name(HPDB, Zero)
        Name(PINA, Zero)
        Name(CCST, Buffer(One)
        {
	0x02
        })
        Name(CCS2, 0x2)
        Name(USBC, Buffer(One)
        {
	0x0b
        })
        Name(HSFL, Buffer(One)
        {
	0x00
        })
        Name(DPP0, Buffer(One)
        {
	0x00
        })
        Name(DPP1, Buffer(One)
        {
	0x00
        })
        Name(MPP0, Buffer(One)
        {
	0x00
        })
        Name(MPP1, Buffer(One)
        {
	0x00
        })
        Device(URS0)
        {
            Name(_HID, "QCOM258B")
            Name(_CID, Package(0x2)
            {
                "PNP0CA1",
                "QCOMFFE1"
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Name(_CCA, Zero)
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.UCP0
            })
            Name(_CRS, Buffer(0xe)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x60, 0x0a, 0xff, 0xff, 0x0f, 0x00,
	0x79, 0x00
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
            Device(USB0)
            {
                Name(_ADR, Zero)
                Name(_S0W, 0x3)
                Name(_CRS, Buffer(0x2f)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa2, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x19, 0x01, 0x11,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x1b, 0x01, 0x0f, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x1b, 0x01, 0x0e, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(0xf)
                }
                Method(DPM0, 0x1, NotSerialized)
                {
                    Store(Arg0, \_SB_.DPP0)
                    Notify(\_SB_.PEP0, 0xa0)
                }
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.CCST)
                }
                Method(HSEN, 0x0, NotSerialized)
                {
                    Return(\_SB_.HSFL)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0x85, 0xe3, 0x2e, 0xce, 0xe6, 0x00, 0xcb, 0x48, 0x9f, 0x05, 0x2e, 0xdb,
	0x92, 0x7c, 0x48, 0x99
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x1d
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        Return(Zero)
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            Return(Zero)
                                            Break
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_1, 0x4))
                                            {
                                                Return(0x2)
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x00
                                                })
                                                Break
                                            }
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            Return(Buffer(One)
                            {
	0x00
                            })
                            Break
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
            Device(UFN0)
            {
                Name(_ADR, One)
                Name(_S0W, 0x3)
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(_CRS, Buffer(0x14)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa2, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Method(CCVL, 0x0, NotSerialized)
                {
                    Return(\_SB_.CCST)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0xeb, 0xcf, 0x56, 0xfe, 0xd5, 0x49, 0x78, 0x43, 0xa8, 0xa2, 0x29, 0x78,
	0xdb, 0xe5, 0x4a, 0xd2
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x03
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, One))
                                    {
                                        Return(0x20)
                                        Break
                                    }
                                    Else
                                    {
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, Buffer(0x10)
                            {
	0x9f, 0x29, 0xde, 0x18, 0x76, 0x94, 0xc9, 0x4f, 0xb4, 0x3b, 0x8a, 0xeb,
	0x71, 0x3e, 0xd7, 0x51
                            }))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg2, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        While(One)
                                        {
                                            Name(_T_4, 0x0)
                                            Store(ToInteger(Arg1, ), _T_4)
                                            If(LEqual(_T_4, Zero))
                                            {
                                                Return(Buffer(One)
                                                {
	0x03
                                                })
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x01
                                                })
                                                Break
                                            }
                                            Break
                                        }
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, One))
                                        {
                                            Return(0x39)
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x00
                                            })
                                            Break
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                Return(Buffer(One)
                                {
	0x00
                                })
                                Break
                            }
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
        }
        Device(URS1)
        {
            Name(_HID, "QCOM258C")
            Name(_CID, Package(0x2)
            {
                "PNP0CA1",
                "QCOMFFE1"
            })
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, One)
            Name(_CCA, Zero)
            Name(_DEP, Package(One)
            {
                \_SB_.PEP0
            })
            Name(_CRS, Buffer(0x31)
            {
	0x86, 0x09, 0x00, 0x01, 0x00, 0x00, 0x80, 0x0a, 0xff, 0xff, 0x0f, 0x00,
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x5b,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79,
	0x00
            })
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
            Device(USB1)
            {
                Name(_S0W, 0x3)
                Name(_ADR, Zero)
                Name(_CRS, Buffer(0x2f)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa7, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00, 0x19, 0x01, 0x10,
	0x02, 0x00, 0x00, 0x89, 0x06, 0x00, 0x1b, 0x01, 0x0d, 0x02, 0x00, 0x00,
	0x89, 0x06, 0x00, 0x1b, 0x01, 0x0c, 0x02, 0x00, 0x00, 0x79, 0x00
                })
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(STVL, 0xf)
                Method(_STA, 0x0, NotSerialized)
                {
                    Return(STVL)
                }
                Method(DPM1, 0x1, NotSerialized)
                {
                    Store(Arg0, \_SB_.DPP1)
                    Notify(\_SB_.PEP0, 0xa1)
                }
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0x85, 0xe3, 0x2e, 0xce, 0xe6, 0x00, 0xcb, 0x48, 0x9f, 0x05, 0x2e, 0xdb,
	0x92, 0x7c, 0x48, 0x99
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x0d
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, 0x2))
                                    {
                                        Return(Zero)
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_1, 0x3))
                                        {
                                            Return(Zero)
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x00
                                            })
                                            Break
                                        }
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            Return(Buffer(One)
                            {
	0x00
                            })
                            Break
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
            Device(UFN1)
            {
                Name(_ADR, One)
                Name(_S0W, 0x3)
                Device(RHUB)
                {
                    Name(_ADR, Zero)
                    Device(PRT1)
                    {
                        Name(_ADR, One)
                        Name(_UPC, Package(0x4)
                        {
                            One,
                            0x9,
                            Zero,
                            Zero
                        })
                        Name(_PLD, Package(0x1)
                        {
                            Buffer(0x14)
                            {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x80, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                            }
                        })
                    }
                }
                Name(_CRS, Buffer(0x3b)
                {
	0x89, 0x06, 0x00, 0x09, 0x01, 0xa5, 0x00, 0x00, 0x00, 0x89, 0x06, 0x00,
	0x19, 0x01, 0xa7, 0x00, 0x00, 0x00, 0x8c, 0x24, 0x00, 0x01, 0x00, 0x01,
	0x00, 0x15, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19,
	0x00, 0x23, 0x00, 0x04, 0x00, 0x89, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e,
	0x50, 0x4d, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00
                })
                Method(_DSM, 0x4, NotSerialized)
                {
                    While(One)
                    {
                        Name(_T_0, Buffer(0x1)
                        {
	0x00
                        })
                        CopyObject(ToBuffer(Arg0, ), _T_0)
                        If(LEqual(_T_0, Buffer(0x10)
                        {
	0xeb, 0xcf, 0x56, 0xfe, 0xd5, 0x49, 0x78, 0x43, 0xa8, 0xa2, 0x29, 0x78,
	0xdb, 0xe5, 0x4a, 0xd2
                        }))
                        {
                            While(One)
                            {
                                Name(_T_1, 0x0)
                                Store(ToInteger(Arg2, ), _T_1)
                                If(LEqual(_T_1, Zero))
                                {
                                    While(One)
                                    {
                                        Name(_T_2, 0x0)
                                        Store(ToInteger(Arg1, ), _T_2)
                                        If(LEqual(_T_2, Zero))
                                        {
                                            Return(Buffer(One)
                                            {
	0x03
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x01
                                            })
                                            Break
                                        }
                                        Break
                                    }
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                                Else
                                {
                                    If(LEqual(_T_1, One))
                                    {
                                        Return(0x20)
                                        Break
                                    }
                                    Else
                                    {
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                }
                                Break
                            }
                        }
                        Else
                        {
                            If(LEqual(_T_0, Buffer(0x10)
                            {
	0x9f, 0x29, 0xde, 0x18, 0x76, 0x94, 0xc9, 0x4f, 0xb4, 0x3b, 0x8a, 0xeb,
	0x71, 0x3e, 0xd7, 0x51
                            }))
                            {
                                While(One)
                                {
                                    Name(_T_3, 0x0)
                                    Store(ToInteger(Arg2, ), _T_3)
                                    If(LEqual(_T_3, Zero))
                                    {
                                        While(One)
                                        {
                                            Name(_T_4, 0x0)
                                            Store(ToInteger(Arg1, ), _T_4)
                                            If(LEqual(_T_4, Zero))
                                            {
                                                Return(Buffer(One)
                                                {
	0x03
                                                })
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Buffer(One)
                                                {
	0x01
                                                })
                                                Break
                                            }
                                            Break
                                        }
                                        Return(Buffer(One)
                                        {
	0x00
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        If(LEqual(_T_3, One))
                                        {
                                            Return(0x33)
                                            Break
                                        }
                                        Else
                                        {
                                            Return(Buffer(One)
                                            {
	0x00
                                            })
                                            Break
                                        }
                                    }
                                    Break
                                }
                            }
                            Else
                            {
                                Return(Buffer(One)
                                {
	0x00
                                })
                                Break
                            }
                        }
                        Break
                    }
                }
                Method(PHYC, 0x0, NotSerialized)
                {
                    Name(CFG0, Package(0x0)
                    {
                    })
                    Return(CFG0)
                }
            }
        }
        Device(UCP0)
        {
            Name(_HID, "QCOM2575")
            Name(_CID, "QCOMFFE4")
            Name(_DEP, Package(0x2)
            {
                \_SB_.PEP0,
                \_SB_.PTCC
            })
            Device(CON0)
            {
                Name(_ADR, Zero)
                Name(_PLD, Package(0x1)
                {
                    Buffer(0x14)
                    {
	0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x0c, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff
                    }
                })
                Name(_UPC, Package(0x4)
                {
                    One,
                    0x9,
                    Zero,
                    Zero
                })
                Name(_DSD, Package(0x2)
                {
                    Buffer(0x10)
                    {
	0x62, 0x6e, 0x85, 0x6b, 0xf4, 0x40, 0x88, 0x46, 0xbd, 0x46, 0x5e, 0x88,
	0x8a, 0x22, 0x60, 0xde
                    },
                    Package(0xa)
                    {
                        Package(0x2)
                        {
                            One,
                            0x4
                        },
                        Package(0x2)
                        {
                            0x2,
                            0x3
                        },
                        Package(0x2)
                        {
                            0x3,
                            Zero
                        },
                        Package(0x2)
                        {
                            0x4,
                            One
                        },
                        Package(0x2)
                        {
                            0x5,
                            0x3
                        },
                        Package(0x2)
                        {
                            0x6,
                            Package(0x1)
                            {
                                0x19096
                            }
                        },
                        Package(0x2)
                        {
                            0x7,
                            Package(0x3)
                            {
                                0x1912c,
                                0x2d0c8,
                                0x3c096
                            }
                        },
                        Package(0x2)
                        {
                            0x8,
                            Package(0x2)
                            {
                                0xff01,
                                0x3c86
                            }
                        },
                        Package(0x2)
                        {
                            0x9,
                            One
                        },
                        Package(0x2)
                        {
                            0xa,
                            One
                        }
                    }
                })
            }
            Method(_DSM, 0x4, NotSerialized)
            {
                While(One)
                {
                    Name(_T_0, Buffer(0x1)
                    {
	0x00
                    })
                    CopyObject(ToBuffer(Arg0, ), _T_0)
                    If(LEqual(_T_0, Buffer(0x10)
                    {
	0x9f, 0x29, 0xde, 0x18, 0x76, 0x94, 0xc9, 0x4f, 0xb4, 0x3b, 0x8a, 0xeb,
	0x71, 0x3e, 0xd7, 0x51
                    }))
                    {
                        While(One)
                        {
                            Name(_T_1, 0x0)
                            Store(ToInteger(Arg2, ), _T_1)
                            If(LEqual(_T_1, Zero))
                            {
                                While(One)
                                {
                                    Name(_T_2, 0x0)
                                    Store(ToInteger(Arg1, ), _T_2)
                                    If(LEqual(_T_2, Zero))
                                    {
                                        Return(Buffer(One)
                                        {
	0x01
                                        })
                                        Break
                                    }
                                    Else
                                    {
                                        Return(Buffer(One)
                                        {
	0x01
                                        })
                                        Break
                                    }
                                    Break
                                }
                                Return(Buffer(One)
                                {
	0x00
                                })
                                Break
                            }
                            Else
                            {
                                If(LEqual(_T_1, One))
                                {
                                    While(One)
                                    {
                                        Name(_T_3, 0x0)
                                        Store(ToInteger(Arg3, ), _T_3)
                                        If(LEqual(_T_3, Zero))
                                        {
                                            Return(Package(0x1)
                                            {
                                                0x36019050
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            If(LEqual(_T_3, One))
                                            {
                                                Return(Package(0x1)
                                                {
                                                    0x3601912c
                                                })
                                                Break
                                            }
                                            Else
                                            {
                                                Return(Package(0x1)
                                                {
                                                    Zero
                                                })
                                                Break
                                            }
                                        }
                                        Break
                                    }
                                }
                                Else
                                {
                                    Return(Buffer(One)
                                    {
	0x00
                                    })
                                    Break
                                }
                            }
                            Break
                        }
                    }
                    Else
                    {
                        Return(Buffer(One)
                        {
	0x00
                        })
                        Break
                    }
                    Break
                }
            }
            Method(CCOT, 0x2, NotSerialized)
            {
                Store(Arg0, \_SB_.CCST)
                Store(Arg1, \_SB_.HSFL)
                Store(Arg0, \_SB_.CCS2)
                Notify(\_SB_.CFSA, \_SB_.CCS2)
            }
            Method(CCVL, 0x0, NotSerialized)
            {
                Return(\_SB_.CCST)
            }
            Method(HPDS, 0x0, NotSerialized)
            {
                Notify(\_SB_.GPU0, 0x94)
            }
            Method(HPDF, 0x3, NotSerialized)
            {
                Store(Arg0, \_SB_.HPDB)
                Store(Arg1, \_SB_.CCST)
                Store(Arg2, \_SB_.PINA)
                Notify(\_SB_.GPU0, \_SB_.HPDB)
            }
            Method(HPDV, 0x0, NotSerialized)
            {
                Return(\_SB_.HPDB)
            }
            Method(PINV, 0x0, NotSerialized)
            {
                Return(\_SB_.PINA)
            }
        }
        Device(USBA)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.IMM0
            })
            Name(_HID, "QCOM2586")
            Alias(\_SB_.PSUB, _SUB)
        }
        Device(CFSA)
        {
            Name(_HID, "FSA04480")
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x65)
                {
	0x8e, 0x19, 0x00, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x01, 0x06, 0x00,
	0xa0, 0x86, 0x01, 0x00, 0x42, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x49,
	0x43, 0x31, 0x36, 0x00, 0x8c, 0x21, 0x00, 0x01, 0x01, 0x01, 0x00, 0x08,
	0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x01, 0x00, 0x41, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x01, 0x8c, 0x20, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00,
	0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23,
	0x00, 0x00, 0x00, 0x64, 0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x47, 0x49,
	0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
        }
        Device(AGR0)
        {
            Name(_HID, "ACPI000C")
            Name(_PUR, Package(0x2)
            {
                One,
                Zero
            })
            Method(_OST, 0x3, NotSerialized)
            {
                Store(Arg2, \_SB_.PEP0.ROST)
            }
        }
        ThermalZone(TZ0_)
        {
            Name(_HID, "QCOM2558")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ0_.TTSP)
            }
        }
        ThermalZone(TZ1_)
        {
            Name(_HID, "QCOM2558")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TPSV)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTC2)
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ1_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ2_)
        {
            Name(_HID, "QCOM2559")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ2_.TTSP)
            }
        }
        ThermalZone(TZ3_)
        {
            Name(_HID, "QCOM2559")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TPSV)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTC2)
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ3_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ4_)
        {
            Name(_HID, "QCOM25D4")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ4_.TTSP)
            }
        }
        ThermalZone(TZ5_)
        {
            Name(_HID, "QCOM25D4")
            Name(_UID, One)
            Name(_TZD, Package(0x1)
            {
                \_SB_.PEP0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TPSV)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTC2)
            }
            Name(TTSP, One)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ5_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ6_)
        {
            Name(_HID, "QCOM2591")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.GPU0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ6_.TPSV)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ6_.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ6_.TTC2)
            }
            Name(TTSP, 0x2)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ6_.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ7_)
        {
            Name(_HID, "QCOM2551")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ7_.TTSP)
            }
        }
        ThermalZone(TZ9_)
        {
            Name(_HID, "QCOM254C")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ9_.TTSP)
            }
        }
        ThermalZone(TZ11)
        {
            Name(_HID, "QCOM25BF")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.CSW0
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TPSV)
            }
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTC1)
            }
            Name(TTC2, One)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTC2)
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ11.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        ThermalZone(TZ12)
        {
            Name(_HID, "QCOM254B")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
            Name(TTSP, 0x32)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ12.TTSP)
            }
        }
        ThermalZone(TZ13)
        {
            Name(_HID, "QCOM2557")
            Name(_UID, Zero)
            Name(_TZD, Package(0x4)
            {
                \_SB_.WLTM,
                \_SB_.CSW0,
                \_SB_.GPU0,
                _SB_.MBCL
            })
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.BCL1
                })
            }
        }
        ThermalZone(TZ99)
        {
            Name(_HID, "QCOM255A")
            Name(_UID, Zero)
            Name(_TZD, Package(0xd)
            {
                \_SB_.SYSM.CLUS.CPU0,
                \_SB_.SYSM.CLUS.CPU1,
                \_SB_.SYSM.CLUS.CPU2,
                \_SB_.SYSM.CLUS.CPU3,
                \_SB_.SYSM.CLUS.CPU4,
                \_SB_.SYSM.CLUS.CPU5,
                \_SB_.SYSM.CLUS.CPU6,
                \_SB_.SYSM.CLUS.CPU7,
                \_SB_.PEP0,
                \_SB_.WLTM,
                \_SB_.CSW0,
                \_SB_.GPU0,
                \_SB_.MJCT
            })
            Name(TPSV, 0xec4)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TPSV)
            }
            Name(TCRT, 0xf28)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, 0x4)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTC1)
            }
            Name(TTC2, 0x3)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ99.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.PEP0
                })
            }
        }
        Device(MPA_)
        {
            Name(_HID, "QCOM05B4")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MPA1)
        {
            Name(_HID, "QCOM05B5")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ0)
        {
            Name(_HID, "QCOM05B6")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBJ1)
        {
            Name(_HID, "QCOM05B7")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ2)
        {
            Name(_HID, "QCOM05B8")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBJ3)
        {
            Name(_HID, "QCOM05B9")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBS0)
        {
            Name(_HID, "QCOM05BA")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MBS1)
        {
            Name(_HID, "QCOM05BB")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBS2)
        {
            Name(_HID, "QCOM05BC")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MBS3)
        {
            Name(_HID, "QCOM05BD")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(MSKN)
        {
            Name(_HID, "QCOM05BE")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        Device(MJCT)
        {
            Name(_HID, "QCOM05BF")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LOr(LOr(LAnd(LEqual(\_SB_.PSUB, "MTP08250"), LEqual(\_SB_.PLST, One)), LAnd(LEqual(\_SB_.PSUB, "QRD08250"), LEqual(\_SB_.PLST, One))), LAnd(LEqual(\_SB_.PSUB, "CDP08250"), LEqual(\_SB_.PLST, One))))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(0xf)
                }
            }
        }
        ThermalZone(TZ51)
        {
            Name(_HID, "QCOM05C0")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MPA_
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ51.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x1)
                {
                    \_SB_.MPA_
                })
            }
        }
        ThermalZone(TZ58)
        {
            Name(_HID, "QCOM2563")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS1
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ58.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MBS1,
                    \_SB_.ADC1
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        ThermalZone(TZ59)
        {
            Name(_HID, "QCOM2564")
            Name(_UID, Zero)
            Name(_TZD, Package(0x1)
            {
                \_SB_.MBS2
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ59.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MBS2,
                    \_SB_.ADC1
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        ThermalZone(TZ61)
        {
            Name(_HID, "QCOM2561")
            Name(_UID, Zero)
            Name(_TZD, Package(0x3)
            {
                \_SB_.MSKN,
                \_SB_.MJCT,
                \_SB_.MBJ0
            })
            Name(TPSV, 0xe60)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TPSV)
            }
            Name(TCRT, 0xf5a)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TCRT)
            }
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTC1)
            }
            Name(TTC2, 0x2)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTC2)
            }
            Name(TTSP, 0xa)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ61.TTSP)
            }
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.MSKN,
                    \_SB_.ADC3
                })
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        ThermalZone(TZ31)
        {
            Name(_HID, "QCOM255F")
            Name(_UID, Zero)
            Name(TTC1, One)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTC1)
            }
            Name(TTC2, 0x5)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTC2)
            }
            Name(TTSP, 0x1e)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ31.TTSP)
            }
            Name(_TZP, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
        }
        ThermalZone(TZ32)
        {
            Name(_HID, "QCOM2561")
            Name(_UID, Zero)
            Method(_DEP, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    \_SB_.PEP0,
                    \_SB_.ADC1
                })
            }
            Name(_TZD, Package(0x5)
            {
                \_SB_.SYSM.CLUS.CPU4,
                \_SB_.SYSM.CLUS.CPU5,
                \_SB_.SYSM.CLUS.CPU6,
                \_SB_.SYSM.CLUS.CPU7,
                \_SB_.GPU0
            })
            Name(TPSV, 0xe2e)
            Method(_PSV, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TPSV)
            }
            Name(TCRT, 0xef6)
            Method(_CRT, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TCRT)
            }
            Name(_MTL, 0x14)
            Name(TTC1, Zero)
            Method(_TC1, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTC1)
            }
            Name(TTC2, 0x14)
            Method(_TC2, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTC2)
            }
            Name(TTSP, 0x28)
            Name(_TZP, Zero)
            Method(_TSP, 0x0, NotSerialized)
            {
                Return(\_SB_.TZ32.TTSP)
            }
        }
        Name(HWNH, Zero)
        Device(HWN1)
        {
            Name(_HID, "QCOM2569")
            Name(_UID, One)
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                If(LEqual(\_SB_.HWNH, Zero))
                {
                    Return(Zero)
                }
                Else
                {
                    Return(Zero)
                }
            }
            Name(_DEP, Package(One)
            {
                \_SB_.PMIC
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x25)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
	0x0e, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x32, 0x00, 0x79,
	0x00
                })
                Return(RBUF)
            }
            Method(HAPI, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x3)
                {
                    One,
                    One,
                    One
                })
                Return(CFG0)
            }
            Method(HAPC, 0x0, NotSerialized)
            {
                Name(CFG0, Package(0x16)
                {
                    Zero,
                    0x984,
                    Zero,
                    One,
                    One,
                    One,
                    One,
                    Zero,
                    0x4,
                    One,
                    0x3,
                    0x14,
                    One,
                    0x3,
                    Zero,
                    Zero,
                    0x6,
                    Zero,
                    Zero,
                    0x535,
                    0x3,
                    One
                })
                Return(CFG0)
            }
        }
        Device(TSC1)
        {
            Name(_HID, "FTTS3658")
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.GIO0,
                \_SB_.SPI5
            })
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x44)
                {
	0x8e, 0x1c, 0x00, 0x01, 0x00, 0x02, 0x02, 0x00, 0x00, 0x01, 0x09, 0x00,
	0x00, 0x12, 0x7a, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x53, 0x50, 0x49, 0x35, 0x00, 0x8c, 0x20, 0x00, 0x01, 0x00,
	0x01, 0x00, 0x13, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00,
	0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x27, 0x00, 0x5c, 0x5f, 0x53, 0x42,
	0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(PGID, Buffer(0xa)
            {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x54, 0x53, 0x43, 0x31, 0x00
            })
            Name(DBUF, Buffer(DBFL)
            {
            })
            CreateByteField(DBUF, Zero, STAT)
            CreateByteField(DBUF, 0x2, DVAL)
            CreateField(DBUF, 0x18, 0xa0, DEID)
            Method(_S1D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S2D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_S3D, 0x0, NotSerialized)
            {
                Return(0x3)
            }
            Method(_PS0, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(Zero, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
            Method(_PS3, 0x0, NotSerialized)
            {
                Store(Buffer(ESNL)
                {
                }, DEID)
                Store(0x3, DVAL)
                Store(PGID, DEID)
                If(\_SB_.ABD_.AVBL)
                {
                    Store(DBUF, \_SB_.PEP0.FLD0)
                }
            }
        }
        Device(BTNS)
        {
            Name(_HID, "ACPI0011")
            Alias(\_SB_.PSUB, _SUB)
            Name(_UID, Zero)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(RBUF, Buffer(0x6b)
                {
	0x8c, 0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x15, 0x00, 0x02, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c,
	0x20, 0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00,
	0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x85, 0x00,
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x8c, 0x20,
	0x00, 0x01, 0x00, 0x01, 0x00, 0x05, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
	0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x01, 0x00, 0x5c,
	0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x79, 0x00
                })
                Return(RBUF)
            }
            Name(_DSD, Package(0x2)
            {
                Buffer(0x10)
                {
	0x25, 0xd6, 0x6b, 0xfa, 0xe8, 0x9c, 0x0d, 0x47, 0xa2, 0xc7, 0xb3, 0xca,
	0x36, 0xc4, 0x28, 0x2e
                },
                Package(0x4)
                {
                    Package(0x5)
                    {
                        Zero,
                        One,
                        Zero,
                        One,
                        0xd
                    },
                    Package(0x5)
                    {
                        One,
                        Zero,
                        One,
                        One,
                        0x81
                    },
                    Package(0x5)
                    {
                        One,
                        One,
                        One,
                        0xc,
                        0xe9
                    },
                    Package(0x5)
                    {
                        One,
                        0x2,
                        One,
                        0xc,
                        0xea
                    }
                }
            })
        }
        Device(QDCI)
        {
            Name(_DEP, Package(One)
            {
                \_SB_.GLNK
            })
            Name(_HID, "QCOM2512")
            Alias(\_SB_.PSUB, _SUB)
            Method(_STA, 0x0, NotSerialized)
            {
                Return(Zero)
            }
        }
        Device(BTH0)
        {
            Name(_HID, "QCOM256B")
            Alias(\_SB_.PSUB, _SUB)
            Name(_DEP, Package(0x3)
            {
                \_SB_.PEP0,
                \_SB_.PMIC,
                \_SB_.UAR7
            })
            Name(_PRW, Package(0x2)
            {
                Zero,
                Zero
            })
            Name(_S4W, 0x2)
            Name(_S0W, 0x2)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(PBUF, Buffer(0x45)
                {
	0x8e, 0x1d, 0x00, 0x01, 0x00, 0x03, 0x02, 0x35, 0x00, 0x01, 0x0a, 0x00,
	0x00, 0xc2, 0x01, 0x00, 0x20, 0x00, 0x20, 0x00, 0x00, 0xc0, 0x5c, 0x5f,
	0x53, 0x42, 0x2e, 0x55, 0x41, 0x52, 0x37, 0x00, 0x8c, 0x20, 0x00, 0x01,
	0x01, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00,
	0x00, 0x19, 0x00, 0x23, 0x00, 0x00, 0x00, 0x15, 0x00, 0x5c, 0x5f, 0x53,
	0x42, 0x2e, 0x47, 0x49, 0x4f, 0x30, 0x00, 0x79, 0x00
                })
                Return(PBUF)
            }
            Method(_STA, 0x0, NotSerialized)
            {
                Return(0xf)
            }
        }
        Device(ADC1)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.SPMI,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM2511")
            Name(_UID, Zero)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(INTB, Buffer(0x4a)
                {
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x20,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x28,
	0x00, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x79, 0x00
                })
                Name(NAM_, Buffer(0xa)
                {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x53, 0x50, 0x4d, 0x49, 0x00
                })
                Name(VUSR, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x00, 0x31, 0x01, 0x00, 0x00
                })
                Name(VBTM, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x00, 0x35, 0x01, 0x00, 0x00
                })
                Concatenate(VUSR, NAM_, Local1)
                Concatenate(VBTM, NAM_, Local2)
                Concatenate(Local1, Local2, Local3)
                Concatenate(Local3, INTB, Local0)
                Return(Local0)
            }
            Method(ADDV, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    One,
                    One
                })
            }
            Method(GENP, 0x0, NotSerialized)
            {
                Return(Package(0x7)
                {
                    Zero,
                    0x70e4,
                    0x1c9c38,
                    0x7a120,
                    0x43,
                    Zero,
                    Zero
                })
            }
            Method(VGIO, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0x2)
                    {
                        0x3,
                        Buffer(0x4)
                        {
	0x12, 0x32, 0x52, 0x72
                        }
                    },
                    Package(0x2)
                    {
                        0x4,
                        Buffer(0x4)
                        {
	0x13, 0x33, 0x53, 0x73
                        }
                    },
                    Package(0x2)
                    {
                        0x5,
                        Buffer(0x5)
                        {
	0x14, 0x34, 0x54, 0x74, 0x94
                        }
                    },
                    Package(0x2)
                    {
                        0x2,
                        Buffer(0x5)
                        {
	0x15, 0x35, 0x55, 0x75, 0x95
                        }
                    }
                })
            }
            Method(VTGN, 0x0, NotSerialized)
            {
                Return(Package(0x6)
                {
                    0x2,
                    0x2,
                    0x70e4,
                    0x1c9c38,
                    Zero,
                    Zero
                })
            }
        }
        Device(ADC2)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.SPMI,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM2511")
            Name(_UID, One)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(INTB, Buffer(0x4a)
                {
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x30,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0x38,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x79, 0x00
                })
                Name(NAM_, Buffer(0xa)
                {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x53, 0x50, 0x4d, 0x49, 0x00
                })
                Name(VUSR, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x02, 0x31, 0x01, 0x00, 0x00
                })
                Name(VBTM, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x02, 0x35, 0x01, 0x00, 0x00
                })
                Concatenate(VUSR, NAM_, Local1)
                Concatenate(VBTM, NAM_, Local2)
                Concatenate(Local1, Local2, Local3)
                Concatenate(Local3, INTB, Local0)
                Return(Local0)
            }
            Method(ADDV, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    One,
                    One
                })
            }
            Method(GENP, 0x0, NotSerialized)
            {
                Return(Package(0x7)
                {
                    Zero,
                    0x70e4,
                    0x1c9c38,
                    0x7a120,
                    0x43,
                    Zero,
                    One
                })
            }
            Method(VGIO, 0x0, NotSerialized)
            {
                Return(Package(0x5)
                {
                    Package(0x2)
                    {
                        One,
                        Buffer(0x4)
                        {
	0x10, 0x30, 0x50, 0x70
                        }
                    },
                    Package(0x2)
                    {
                        0xb,
                        Buffer(0x4)
                        {
	0x12, 0x32, 0x52, 0x72
                        }
                    },
                    Package(0x2)
                    {
                        0xc,
                        Buffer(0x4)
                        {
	0x13, 0x33, 0x53, 0x73
                        }
                    },
                    Package(0x2)
                    {
                        0x7,
                        Buffer(0x5)
                        {
	0x14, 0x34, 0x54, 0x74, 0x94
                        }
                    },
                    Package(0x2)
                    {
                        0x8,
                        Buffer(0x5)
                        {
	0x15, 0x35, 0x55, 0x75, 0x95
                        }
                    }
                })
            }
            Method(VTGN, 0x0, NotSerialized)
            {
                Return(Package(0x6)
                {
                    0x2,
                    0x2,
                    0x70e4,
                    0x1c9c38,
                    Zero,
                    One
                })
            }
        }
        Device(ADC3)
        {
            Name(_DEP, Package(0x2)
            {
                \_SB_.SPMI,
                \_SB_.PMIC
            })
            Name(_HID, "QCOM2511")
            Name(_UID, 0x2)
            Alias(\_SB_.PSUB, _SUB)
            Method(_CRS, 0x0, NotSerialized)
            {
                Name(INTB, Buffer(0x4a)
                {
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xd0,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x8c, 0x21, 0x00, 0x01, 0x00, 0x01, 0x00, 0x11, 0x00, 0x01, 0x00, 0x00,
	0x00, 0x00, 0x17, 0x00, 0x00, 0x19, 0x00, 0x23, 0x00, 0x01, 0x00, 0xd8,
	0x01, 0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x50, 0x4d, 0x30, 0x31, 0x00, 0x02,
	0x79, 0x00
                })
                Name(NAM_, Buffer(0xa)
                {
	0x5c, 0x5f, 0x53, 0x42, 0x2e, 0x53, 0x50, 0x4d, 0x49, 0x00
                })
                Name(VUSR, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x04, 0x31, 0x01, 0x00, 0x00
                })
                Name(VBTM, Buffer(0xc)
                {
	0x8e, 0x13, 0x00, 0x01, 0x00, 0xc1, 0x02, 0x04, 0x35, 0x01, 0x00, 0x00
                })
                Concatenate(VUSR, NAM_, Local1)
                Concatenate(VBTM, NAM_, Local2)
                Concatenate(Local1, Local2, Local3)
                Concatenate(Local3, INTB, Local0)
                Return(Local0)
            }
            Method(ADDV, 0x0, NotSerialized)
            {
                Return(Package(0x2)
                {
                    One,
                    One
                })
            }
            Method(GENP, 0x0, NotSerialized)
            {
                Return(Package(0x7)
                {
                    Zero,
                    0x70e4,
                    0x1c9c38,
                    0x7a120,
                    0x43,
                    Zero,
                    0x2
                })
            }
            Method(VGIO, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0x2)
                    {
                        0x5,
                        Buffer(0x4)
                        {
	0x12, 0x32, 0x52, 0x72
                        }
                    },
                    Package(0x2)
                    {
                        0x6,
                        Buffer(0x4)
                        {
	0x13, 0x33, 0x53, 0x73
                        }
                    },
                    Package(0x2)
                    {
                        0x7,
                        Buffer(0x5)
                        {
	0x14, 0x34, 0x54, 0x74, 0x94
                        }
                    },
                    Package(0x2)
                    {
                        0xa,
                        Buffer(0x5)
                        {
	0x15, 0x35, 0x55, 0x75, 0x95
                        }
                    }
                })
            }
            Method(VTGN, 0x0, NotSerialized)
            {
                Return(Package(0x6)
                {
                    0x2,
                    0x2,
                    0x70e4,
                    0x1c9c38,
                    Zero,
                    0x2
                })
            }
        }
        Scope(\_SB_.ADC1)
        {
            Method(CHAN, 0x0, NotSerialized)
            {
                Return(Package(0x7)
                {
                    Package(0xb)
                    {
                        "VPH_PWR",
                        0x83,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "VCOIN",
                        0x85,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "PMIC_THERM",
                        0x6,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "XO_THERM",
                        0x4c,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        XTTB
                    },
                    Package(0xb)
                    {
                        "XO_THERM_GPS",
                        0x4c,
                        0x2,
                        0x2,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        XTTB
                    },
                    Package(0xb)
                    {
                        "SYS_THERM1",
                        0x4d,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    },
                    Package(0xb)
                    {
                        "PA_THERM",
                        0x4e,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    }
                })
            }
            Method(SYTB, 0x0, NotSerialized)
            {
                Return(Package(0x22)
                {
                    Package(0x2)
                    {
                        0x40dd78,
                        0xffffffd8
                    },
                    Package(0x2)
                    {
                        0x2dd9e4,
                        0xffffffdd
                    },
                    Package(0x2)
                    {
                        0x20ca24,
                        0xffffffe2
                    },
                    Package(0x2)
                    {
                        0x17b588,
                        0xffffffe7
                    },
                    Package(0x2)
                    {
                        0x1152c4,
                        0xffffffec
                    },
                    Package(0x2)
                    {
                        0xcc8a8,
                        0xfffffff1
                    },
                    Package(0x2)
                    {
                        0x985e4,
                        0xfffffff6
                    },
                    Package(0x2)
                    {
                        0x7286c,
                        0xfffffffb
                    },
                    Package(0x2)
                    {
                        0x56d10,
                        Zero
                    },
                    Package(0x2)
                    {
                        0x425b8,
                        0x5
                    },
                    Package(0x2)
                    {
                        0x331f8,
                        0xa
                    },
                    Package(0x2)
                    {
                        0x27ac4,
                        0xf
                    },
                    Package(0x2)
                    {
                        0x1f018,
                        0x14
                    },
                    Package(0x2)
                    {
                        0x186a0,
                        0x19
                    },
                    Package(0x2)
                    {
                        0x13560,
                        0x1e
                    },
                    Package(0x2)
                    {
                        0xf6e0,
                        0x23
                    },
                    Package(0x2)
                    {
                        0xc60c,
                        0x28
                    },
                    Package(0x2)
                    {
                        0x9fc4,
                        0x2d
                    },
                    Package(0x2)
                    {
                        0x81b0,
                        0x32
                    },
                    Package(0x2)
                    {
                        0x69dc,
                        0x37
                    },
                    Package(0x2)
                    {
                        0x56b8,
                        0x3c
                    },
                    Package(0x2)
                    {
                        0x477c,
                        0x41
                    },
                    Package(0x2)
                    {
                        0x3b60,
                        0x46
                    },
                    Package(0x2)
                    {
                        0x3138,
                        0x4b
                    },
                    Package(0x2)
                    {
                        0x2968,
                        0x50
                    },
                    Package(0x2)
                    {
                        0x22ba,
                        0x55
                    },
                    Package(0x2)
                    {
                        0x1d4c,
                        0x5a
                    },
                    Package(0x2)
                    {
                        0x18d8,
                        0x5f
                    },
                    Package(0x2)
                    {
                        0x1522,
                        0x64
                    },
                    Package(0x2)
                    {
                        0x120c,
                        0x69
                    },
                    Package(0x2)
                    {
                        0xf82,
                        0x6e
                    },
                    Package(0x2)
                    {
                        0xd5c,
                        0x73
                    },
                    Package(0x2)
                    {
                        0xb86,
                        0x78
                    },
                    Package(0x2)
                    {
                        0xa00,
                        0x7d
                    }
                })
            }
            Method(XTTB, 0x0, NotSerialized)
            {
                Return(Package(0xa8)
                {
                    Package(0x2)
                    {
                        0x40dc21,
                        0xffff6000
                    },
                    Package(0x2)
                    {
                        0x3c74e5,
                        0xffff6400
                    },
                    Package(0x2)
                    {
                        0x38611b,
                        0xffff6800
                    },
                    Package(0x2)
                    {
                        0x349a1a,
                        0xffff6c00
                    },
                    Package(0x2)
                    {
                        0x3119cb,
                        0xffff7000
                    },
                    Package(0x2)
                    {
                        0x2dda9a,
                        0xffff7400
                    },
                    Package(0x2)
                    {
                        0x2ad76c,
                        0xffff7800
                    },
                    Package(0x2)
                    {
                        0x280b95,
                        0xffff7c00
                    },
                    Package(0x2)
                    {
                        0x2572ca,
                        0xffff8000
                    },
                    Package(0x2)
                    {
                        0x23091e,
                        0xffff8400
                    },
                    Package(0x2)
                    {
                        0x20caf4,
                        0xffff8800
                    },
                    Package(0x2)
                    {
                        0x1eb4fe,
                        0xffff8c00
                    },
                    Package(0x2)
                    {
                        0x1cc430,
                        0xffff9000
                    },
                    Package(0x2)
                    {
                        0x1af5be,
                        0xffff9400
                    },
                    Package(0x2)
                    {
                        0x194716,
                        0xffff9800
                    },
                    Package(0x2)
                    {
                        0x17b5dc,
                        0xffff9c00
                    },
                    Package(0x2)
                    {
                        0x163fe3,
                        0xffffa000
                    },
                    Package(0x2)
                    {
                        0x14e329,
                        0xffffa400
                    },
                    Package(0x2)
                    {
                        0x139dd6,
                        0xffffa800
                    },
                    Package(0x2)
                    {
                        0x126e37,
                        0xffffac00
                    },
                    Package(0x2)
                    {
                        0x1152ba,
                        0xffffb000
                    },
                    Package(0x2)
                    {
                        0x1049ed,
                        0xffffb400
                    },
                    Package(0x2)
                    {
                        0xf527b,
                        0xffffb800
                    },
                    Package(0x2)
                    {
                        0xe6b27,
                        0xffffbc00
                    },
                    Package(0x2)
                    {
                        0xd92ce,
                        0xffffc000
                    },
                    Package(0x2)
                    {
                        0xcc863,
                        0xffffc400
                    },
                    Package(0x2)
                    {
                        0xc0aed,
                        0xffffc800
                    },
                    Package(0x2)
                    {
                        0xb5985,
                        0xffffcc00
                    },
                    Package(0x2)
                    {
                        0xab357,
                        0xffffd000
                    },
                    Package(0x2)
                    {
                        0xa179d,
                        0xffffd400
                    },
                    Package(0x2)
                    {
                        0x985a0,
                        0xffffd800
                    },
                    Package(0x2)
                    {
                        0x8fcb6,
                        0xffffdc00
                    },
                    Package(0x2)
                    {
                        0x87c44,
                        0xffffe000
                    },
                    Package(0x2)
                    {
                        0x803b7,
                        0xffffe400
                    },
                    Package(0x2)
                    {
                        0x79288,
                        0xffffe800
                    },
                    Package(0x2)
                    {
                        0x7283a,
                        0xffffec00
                    },
                    Package(0x2)
                    {
                        0x6c458,
                        0xfffff000
                    },
                    Package(0x2)
                    {
                        0x66678,
                        0xfffff400
                    },
                    Package(0x2)
                    {
                        0x60e33,
                        0xfffff800
                    },
                    Package(0x2)
                    {
                        0x5bb2d,
                        0xfffffc00
                    },
                    Package(0x2)
                    {
                        0x56d0e,
                        Zero
                    },
                    Package(0x2)
                    {
                        0x52387,
                        0x400
                    },
                    Package(0x2)
                    {
                        0x4de4c,
                        0x800
                    },
                    Package(0x2)
                    {
                        0x49d17,
                        0xc00
                    },
                    Package(0x2)
                    {
                        0x45fa6,
                        0x1000
                    },
                    Package(0x2)
                    {
                        0x425be,
                        0x1400
                    },
                    Package(0x2)
                    {
                        0x3ef25,
                        0x1800
                    },
                    Package(0x2)
                    {
                        0x3bba6,
                        0x1c00
                    },
                    Package(0x2)
                    {
                        0x38b11,
                        0x2000
                    },
                    Package(0x2)
                    {
                        0x35d37,
                        0x2400
                    },
                    Package(0x2)
                    {
                        0x331ee,
                        0x2800
                    },
                    Package(0x2)
                    {
                        0x3090e,
                        0x2c00
                    },
                    Package(0x2)
                    {
                        0x2e270,
                        0x3000
                    },
                    Package(0x2)
                    {
                        0x2bdf2,
                        0x3400
                    },
                    Package(0x2)
                    {
                        0x29b74,
                        0x3800
                    },
                    Package(0x2)
                    {
                        0x27ad7,
                        0x3c00
                    },
                    Package(0x2)
                    {
                        0x25bfe,
                        0x4000
                    },
                    Package(0x2)
                    {
                        0x23ece,
                        0x4400
                    },
                    Package(0x2)
                    {
                        0x2232f,
                        0x4800
                    },
                    Package(0x2)
                    {
                        0x20909,
                        0x4c00
                    },
                    Package(0x2)
                    {
                        0x1f046,
                        0x5000
                    },
                    Package(0x2)
                    {
                        0x1d8d2,
                        0x5400
                    },
                    Package(0x2)
                    {
                        0x1c298,
                        0x5800
                    },
                    Package(0x2)
                    {
                        0x1ad88,
                        0x5c00
                    },
                    Package(0x2)
                    {
                        0x19990,
                        0x6000
                    },
                    Package(0x2)
                    {
                        0x186a0,
                        0x6400
                    },
                    Package(0x2)
                    {
                        0x174aa,
                        0x6800
                    },
                    Package(0x2)
                    {
                        0x1639e,
                        0x6c00
                    },
                    Package(0x2)
                    {
                        0x15371,
                        0x7000
                    },
                    Package(0x2)
                    {
                        0x14415,
                        0x7400
                    },
                    Package(0x2)
                    {
                        0x13580,
                        0x7800
                    },
                    Package(0x2)
                    {
                        0x127a6,
                        0x7c00
                    },
                    Package(0x2)
                    {
                        0x11a7c,
                        0x8000
                    },
                    Package(0x2)
                    {
                        0x10dfa,
                        0x8400
                    },
                    Package(0x2)
                    {
                        0x10216,
                        0x8800
                    },
                    Package(0x2)
                    {
                        0xf6c8,
                        0x8c00
                    },
                    Package(0x2)
                    {
                        0xec07,
                        0x9000
                    },
                    Package(0x2)
                    {
                        0xe1cc,
                        0x9400
                    },
                    Package(0x2)
                    {
                        0xd810,
                        0x9800
                    },
                    Package(0x2)
                    {
                        0xcecc,
                        0x9c00
                    },
                    Package(0x2)
                    {
                        0xc5f9,
                        0xa000
                    },
                    Package(0x2)
                    {
                        0xbd93,
                        0xa400
                    },
                    Package(0x2)
                    {
                        0xb592,
                        0xa800
                    },
                    Package(0x2)
                    {
                        0xadf2,
                        0xac00
                    },
                    Package(0x2)
                    {
                        0xa6ae,
                        0xb000
                    },
                    Package(0x2)
                    {
                        0x9fc1,
                        0xb400
                    },
                    Package(0x2)
                    {
                        0x9927,
                        0xb800
                    },
                    Package(0x2)
                    {
                        0x92db,
                        0xbc00
                    },
                    Package(0x2)
                    {
                        0x8cd9,
                        0xc000
                    },
                    Package(0x2)
                    {
                        0x871e,
                        0xc400
                    },
                    Package(0x2)
                    {
                        0x81a6,
                        0xc800
                    },
                    Package(0x2)
                    {
                        0x7c6d,
                        0xcc00
                    },
                    Package(0x2)
                    {
                        0x7771,
                        0xd000
                    },
                    Package(0x2)
                    {
                        0x72ae,
                        0xd400
                    },
                    Package(0x2)
                    {
                        0x6e22,
                        0xd800
                    },
                    Package(0x2)
                    {
                        0x69ca,
                        0xdc00
                    },
                    Package(0x2)
                    {
                        0x65a4,
                        0xe000
                    },
                    Package(0x2)
                    {
                        0x61ac,
                        0xe400
                    },
                    Package(0x2)
                    {
                        0x5de1,
                        0xe800
                    },
                    Package(0x2)
                    {
                        0x5a40,
                        0xec00
                    },
                    Package(0x2)
                    {
                        0x56c8,
                        0xf000
                    },
                    Package(0x2)
                    {
                        0x5377,
                        0xf400
                    },
                    Package(0x2)
                    {
                        0x504a,
                        0xf800
                    },
                    Package(0x2)
                    {
                        0x4d40,
                        0xfc00
                    },
                    Package(0x2)
                    {
                        0x4a57,
                        0x10000
                    },
                    Package(0x2)
                    {
                        0x478e,
                        0x10400
                    },
                    Package(0x2)
                    {
                        0x44e4,
                        0x10800
                    },
                    Package(0x2)
                    {
                        0x4256,
                        0x10c00
                    },
                    Package(0x2)
                    {
                        0x3fe3,
                        0x11000
                    },
                    Package(0x2)
                    {
                        0x3d8b,
                        0x11400
                    },
                    Package(0x2)
                    {
                        0x3b4c,
                        0x11800
                    },
                    Package(0x2)
                    {
                        0x3924,
                        0x11c00
                    },
                    Package(0x2)
                    {
                        0x3713,
                        0x12000
                    },
                    Package(0x2)
                    {
                        0x3518,
                        0x12400
                    },
                    Package(0x2)
                    {
                        0x3332,
                        0x12800
                    },
                    Package(0x2)
                    {
                        0x3160,
                        0x12c00
                    },
                    Package(0x2)
                    {
                        0x2fa0,
                        0x13000
                    },
                    Package(0x2)
                    {
                        0x2df2,
                        0x13400
                    },
                    Package(0x2)
                    {
                        0x2c56,
                        0x13800
                    },
                    Package(0x2)
                    {
                        0x2aca,
                        0x13c00
                    },
                    Package(0x2)
                    {
                        0x294e,
                        0x14000
                    },
                    Package(0x2)
                    {
                        0x27e1,
                        0x14400
                    },
                    Package(0x2)
                    {
                        0x2682,
                        0x14800
                    },
                    Package(0x2)
                    {
                        0x2531,
                        0x14c00
                    },
                    Package(0x2)
                    {
                        0x23ed,
                        0x15000
                    },
                    Package(0x2)
                    {
                        0x22b6,
                        0x15400
                    },
                    Package(0x2)
                    {
                        0x218b,
                        0x15800
                    },
                    Package(0x2)
                    {
                        0x206b,
                        0x15c00
                    },
                    Package(0x2)
                    {
                        0x1f57,
                        0x16000
                    },
                    Package(0x2)
                    {
                        0x1e4d,
                        0x16400
                    },
                    Package(0x2)
                    {
                        0x1d4d,
                        0x16800
                    },
                    Package(0x2)
                    {
                        0x1c56,
                        0x16c00
                    },
                    Package(0x2)
                    {
                        0x1b69,
                        0x17000
                    },
                    Package(0x2)
                    {
                        0x1a85,
                        0x17400
                    },
                    Package(0x2)
                    {
                        0x19aa,
                        0x17800
                    },
                    Package(0x2)
                    {
                        0x18d6,
                        0x17c00
                    },
                    Package(0x2)
                    {
                        0x180b,
                        0x18000
                    },
                    Package(0x2)
                    {
                        0x1747,
                        0x18400
                    },
                    Package(0x2)
                    {
                        0x168a,
                        0x18800
                    },
                    Package(0x2)
                    {
                        0x15d4,
                        0x18c00
                    },
                    Package(0x2)
                    {
                        0x1524,
                        0x19000
                    },
                    Package(0x2)
                    {
                        0x147b,
                        0x19400
                    },
                    Package(0x2)
                    {
                        0x13d8,
                        0x19800
                    },
                    Package(0x2)
                    {
                        0x133b,
                        0x19c00
                    },
                    Package(0x2)
                    {
                        0x12a3,
                        0x1a000
                    },
                    Package(0x2)
                    {
                        0x1211,
                        0x1a400
                    },
                    Package(0x2)
                    {
                        0x1184,
                        0x1a800
                    },
                    Package(0x2)
                    {
                        0x10fc,
                        0x1ac00
                    },
                    Package(0x2)
                    {
                        0x1079,
                        0x1b000
                    },
                    Package(0x2)
                    {
                        0xffa,
                        0x1b400
                    },
                    Package(0x2)
                    {
                        0xf80,
                        0x1b800
                    },
                    Package(0x2)
                    {
                        0xf0a,
                        0x1bc00
                    },
                    Package(0x2)
                    {
                        0xe98,
                        0x1c000
                    },
                    Package(0x2)
                    {
                        0xe2a,
                        0x1c400
                    },
                    Package(0x2)
                    {
                        0xdbf,
                        0x1c800
                    },
                    Package(0x2)
                    {
                        0xd59,
                        0x1cc00
                    },
                    Package(0x2)
                    {
                        0xcf5,
                        0x1d000
                    },
                    Package(0x2)
                    {
                        0xc95,
                        0x1d400
                    },
                    Package(0x2)
                    {
                        0xc39,
                        0x1d800
                    },
                    Package(0x2)
                    {
                        0xbdf,
                        0x1dc00
                    },
                    Package(0x2)
                    {
                        0xb88,
                        0x1e000
                    },
                    Package(0x2)
                    {
                        0xb34,
                        0x1e400
                    },
                    Package(0x2)
                    {
                        0xae3,
                        0x1e800
                    },
                    Package(0x2)
                    {
                        0xa95,
                        0x1ec00
                    },
                    Package(0x2)
                    {
                        0xa49,
                        0x1f000
                    },
                    Package(0x2)
                    {
                        0xa00,
                        0x1f400
                    },
                    Package(0x2)
                    {
                        0x9b9,
                        0x1f800
                    },
                    Package(0x2)
                    {
                        0x974,
                        0x1fc00
                    }
                })
            }
            Method(VTCH, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0xd)
                    {
                        "VPH_PWR",
                        0x83,
                        Zero,
                        One,
                        Zero,
                        0x2,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        Zero,
                        Zero,
                        0x15f9
                    },
                    Package(0xd)
                    {
                        "PMIC_THERM",
                        0x6,
                        Zero,
                        Zero,
                        Zero,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        0xffff3cb0,
                        0x249f0
                    },
                    Package(0xd)
                    {
                        "SYS_THERM1",
                        0x4d,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    },
                    Package(0xd)
                    {
                        "PA_THERM",
                        0x4e,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    }
                })
            }
            Method(VTMT, 0x0, NotSerialized)
            {
                Return(Package(0x3)
                {
                    0xb,
                    One,
                    0x5
                })
            }
        }
        Scope(\_SB_.ADC2)
        {
            Method(CHAN, 0x0, NotSerialized)
            {
                Return(Package(0x7)
                {
                    Package(0xb)
                    {
                        "PMIC_TEMP2",
                        0x6,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "USB_IN_I",
                        0x7,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        One,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "USB_IN",
                        0x8,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        0x10,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "CHG_TEMP",
                        0x9,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        One,
                        Zero,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "SYS_THERM2",
                        0x4d,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    },
                    Package(0xb)
                    {
                        "SYS_THERM3",
                        0x4e,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    },
                    Package(0xb)
                    {
                        "PA_THERM1",
                        0x4f,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    }
                })
            }
            Method(SYTB, 0x0, NotSerialized)
            {
                Return(Package(0x22)
                {
                    Package(0x2)
                    {
                        0x40dd78,
                        0xffffffd8
                    },
                    Package(0x2)
                    {
                        0x2dd9e4,
                        0xffffffdd
                    },
                    Package(0x2)
                    {
                        0x20ca24,
                        0xffffffe2
                    },
                    Package(0x2)
                    {
                        0x17b588,
                        0xffffffe7
                    },
                    Package(0x2)
                    {
                        0x1152c4,
                        0xffffffec
                    },
                    Package(0x2)
                    {
                        0xcc8a8,
                        0xfffffff1
                    },
                    Package(0x2)
                    {
                        0x985e4,
                        0xfffffff6
                    },
                    Package(0x2)
                    {
                        0x7286c,
                        0xfffffffb
                    },
                    Package(0x2)
                    {
                        0x56d10,
                        Zero
                    },
                    Package(0x2)
                    {
                        0x425b8,
                        0x5
                    },
                    Package(0x2)
                    {
                        0x331f8,
                        0xa
                    },
                    Package(0x2)
                    {
                        0x27ac4,
                        0xf
                    },
                    Package(0x2)
                    {
                        0x1f018,
                        0x14
                    },
                    Package(0x2)
                    {
                        0x186a0,
                        0x19
                    },
                    Package(0x2)
                    {
                        0x13560,
                        0x1e
                    },
                    Package(0x2)
                    {
                        0xf6e0,
                        0x23
                    },
                    Package(0x2)
                    {
                        0xc60c,
                        0x28
                    },
                    Package(0x2)
                    {
                        0x9fc4,
                        0x2d
                    },
                    Package(0x2)
                    {
                        0x81b0,
                        0x32
                    },
                    Package(0x2)
                    {
                        0x69dc,
                        0x37
                    },
                    Package(0x2)
                    {
                        0x56b8,
                        0x3c
                    },
                    Package(0x2)
                    {
                        0x477c,
                        0x41
                    },
                    Package(0x2)
                    {
                        0x3b60,
                        0x46
                    },
                    Package(0x2)
                    {
                        0x3138,
                        0x4b
                    },
                    Package(0x2)
                    {
                        0x2968,
                        0x50
                    },
                    Package(0x2)
                    {
                        0x22ba,
                        0x55
                    },
                    Package(0x2)
                    {
                        0x1d4c,
                        0x5a
                    },
                    Package(0x2)
                    {
                        0x18d8,
                        0x5f
                    },
                    Package(0x2)
                    {
                        0x1522,
                        0x64
                    },
                    Package(0x2)
                    {
                        0x120c,
                        0x69
                    },
                    Package(0x2)
                    {
                        0xf82,
                        0x6e
                    },
                    Package(0x2)
                    {
                        0xd5c,
                        0x73
                    },
                    Package(0x2)
                    {
                        0xb86,
                        0x78
                    },
                    Package(0x2)
                    {
                        0xa00,
                        0x7d
                    }
                })
            }
            Method(VTCH, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0xd)
                    {
                        "PMIC_TEMP2",
                        0x6,
                        Zero,
                        Zero,
                        Zero,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        0xffff3cb0,
                        0x249f0
                    },
                    Package(0xd)
                    {
                        "SYS_THERM2",
                        0x4d,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    },
                    Package(0xd)
                    {
                        "SYS_THERM3",
                        0x4e,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    },
                    Package(0xd)
                    {
                        "PA_THERM1",
                        0x4f,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    }
                })
            }
            Method(VTMT, 0x0, NotSerialized)
            {
                Return(Package(0x3)
                {
                    0xb,
                    One,
                    0x5
                })
            }
        }
        Scope(\_SB_.ADC3)
        {
            Method(CHAN, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0xb)
                    {
                        "PMIC_TEMP3",
                        0x6,
                        Zero,
                        Zero,
                        0x2,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero
                    },
                    Package(0xb)
                    {
                        "SYS_THERM4",
                        0x4d,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    },
                    Package(0xb)
                    {
                        "SYS_THERM5",
                        0x4e,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    },
                    Package(0xb)
                    {
                        "SYS_THERM6",
                        0x4f,
                        0x2,
                        Zero,
                        0x2,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB
                    }
                })
            }
            Method(SYTB, 0x0, NotSerialized)
            {
                Return(Package(0x22)
                {
                    Package(0x2)
                    {
                        0x40dd78,
                        0xffffffd8
                    },
                    Package(0x2)
                    {
                        0x2dd9e4,
                        0xffffffdd
                    },
                    Package(0x2)
                    {
                        0x20ca24,
                        0xffffffe2
                    },
                    Package(0x2)
                    {
                        0x17b588,
                        0xffffffe7
                    },
                    Package(0x2)
                    {
                        0x1152c4,
                        0xffffffec
                    },
                    Package(0x2)
                    {
                        0xcc8a8,
                        0xfffffff1
                    },
                    Package(0x2)
                    {
                        0x985e4,
                        0xfffffff6
                    },
                    Package(0x2)
                    {
                        0x7286c,
                        0xfffffffb
                    },
                    Package(0x2)
                    {
                        0x56d10,
                        Zero
                    },
                    Package(0x2)
                    {
                        0x425b8,
                        0x5
                    },
                    Package(0x2)
                    {
                        0x331f8,
                        0xa
                    },
                    Package(0x2)
                    {
                        0x27ac4,
                        0xf
                    },
                    Package(0x2)
                    {
                        0x1f018,
                        0x14
                    },
                    Package(0x2)
                    {
                        0x186a0,
                        0x19
                    },
                    Package(0x2)
                    {
                        0x13560,
                        0x1e
                    },
                    Package(0x2)
                    {
                        0xf6e0,
                        0x23
                    },
                    Package(0x2)
                    {
                        0xc60c,
                        0x28
                    },
                    Package(0x2)
                    {
                        0x9fc4,
                        0x2d
                    },
                    Package(0x2)
                    {
                        0x81b0,
                        0x32
                    },
                    Package(0x2)
                    {
                        0x69dc,
                        0x37
                    },
                    Package(0x2)
                    {
                        0x56b8,
                        0x3c
                    },
                    Package(0x2)
                    {
                        0x477c,
                        0x41
                    },
                    Package(0x2)
                    {
                        0x3b60,
                        0x46
                    },
                    Package(0x2)
                    {
                        0x3138,
                        0x4b
                    },
                    Package(0x2)
                    {
                        0x2968,
                        0x50
                    },
                    Package(0x2)
                    {
                        0x22ba,
                        0x55
                    },
                    Package(0x2)
                    {
                        0x1d4c,
                        0x5a
                    },
                    Package(0x2)
                    {
                        0x18d8,
                        0x5f
                    },
                    Package(0x2)
                    {
                        0x1522,
                        0x64
                    },
                    Package(0x2)
                    {
                        0x120c,
                        0x69
                    },
                    Package(0x2)
                    {
                        0xf82,
                        0x6e
                    },
                    Package(0x2)
                    {
                        0xd5c,
                        0x73
                    },
                    Package(0x2)
                    {
                        0xb86,
                        0x78
                    },
                    Package(0x2)
                    {
                        0xa00,
                        0x7d
                    }
                })
            }
            Method(VTCH, 0x0, NotSerialized)
            {
                Return(Package(0x4)
                {
                    Package(0xd)
                    {
                        "PMIC_TEMP3",
                        0x6,
                        Zero,
                        Zero,
                        Zero,
                        0x2,
                        One,
                        One,
                        0x3,
                        Zero,
                        Zero,
                        0xffff3cb0,
                        0x249f0
                    },
                    Package(0xd)
                    {
                        "SYS_THERM4",
                        0x4d,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    },
                    Package(0xd)
                    {
                        "SYS_THERM5",
                        0x4e,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    },
                    Package(0xd)
                    {
                        "SYS_THERM6",
                        0x4f,
                        0x2,
                        Zero,
                        Zero,
                        One,
                        One,
                        One,
                        0x2,
                        0x186a0,
                        SYTB,
                        0xffffffd8,
                        0x7d
                    }
                })
            }
            Method(VTMT, 0x0, NotSerialized)
            {
                Return(Package(0x3)
                {
                    0xb,
                    One,
                    0x5
                })
            }
        }
    }
}
