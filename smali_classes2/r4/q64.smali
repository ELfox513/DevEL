.class public final Lr4/q64;
.super Lr4/rz3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/fc;JJII)V
    .locals 16

    new-instance v1, Lr4/mz3;

    invoke-direct {v1}, Lr4/mz3;-><init>()V

    new-instance v2, Lr4/p64;

    const v0, 0x1b8a0

    move-object/from16 v3, p1

    move/from16 v4, p6

    invoke-direct {v2, v4, v3, v0}, Lr4/p64;-><init>(ILr4/fc;I)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lr4/rz3;-><init>(Lr4/oz3;Lr4/qz3;JJJJJJI)V

    return-void
.end method
