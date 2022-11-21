.class public final enum Lo7/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo7/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lo7/v;

.field public static final enum B:Lo7/v;

.field public static final enum C:Lo7/v;

.field public static final enum D:Lo7/v;

.field public static final enum E:Lo7/v;

.field public static final enum F:Lo7/v;

.field public static final enum G:Lo7/v;

.field public static final enum H:Lo7/v;

.field public static final enum I:Lo7/v;

.field public static final enum J:Lo7/v;

.field public static final enum K:Lo7/v;

.field public static final enum L:Lo7/v;

.field public static final enum M:Lo7/v;

.field public static final enum N:Lo7/v;

.field public static final enum O:Lo7/v;

.field public static final enum P:Lo7/v;

.field public static final enum Q:Lo7/v;

.field public static final enum R:Lo7/v;

.field public static final enum S:Lo7/v;

.field public static final enum T:Lo7/v;

.field public static final enum U:Lo7/v;

.field public static final enum V:Lo7/v;

.field public static final enum W:Lo7/v;

.field public static final enum X:Lo7/v;

.field public static final enum Y:Lo7/v;

.field public static final enum Z:Lo7/v;

.field public static final enum a0:Lo7/v;

.field public static final enum b0:Lo7/v;

.field public static final enum c0:Lo7/v;

.field public static final enum d0:Lo7/v;

.field public static final enum e0:Lo7/v;

.field public static final enum f0:Lo7/v;

.field public static final enum g0:Lo7/v;

.field public static final enum h0:Lo7/v;

.field public static final enum i0:Lo7/v;

.field public static final enum j0:Lo7/v;

.field public static final enum k0:Lo7/v;

.field public static final enum l0:Lo7/v;

.field public static final enum m0:Lo7/v;

.field public static final enum n0:Lo7/v;

.field public static final enum o0:Lo7/v;

.field public static final p0:[Lo7/v;

.field public static final enum q:Lo7/v;

.field public static final q0:[Ljava/lang/reflect/Type;

.field public static final enum r:Lo7/v;

.field public static final synthetic r0:[Lo7/v;

.field public static final enum s:Lo7/v;

.field public static final enum t:Lo7/v;

.field public static final enum u:Lo7/v;

.field public static final enum v:Lo7/v;

.field public static final enum w:Lo7/v;

.field public static final enum x:Lo7/v;

.field public static final enum y:Lo7/v;

.field public static final enum z:Lo7/v;


# instance fields
.field public final a:Lo7/d0;

.field public final b:I

.field public final d:Lo7/v$b;

.field public final k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 65

    new-instance v6, Lo7/v;

    sget-object v7, Lo7/v$b;->b:Lo7/v$b;

    sget-object v8, Lo7/d0;->s:Lo7/d0;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v6, Lo7/v;->q:Lo7/v;

    new-instance v9, Lo7/v;

    sget-object v10, Lo7/d0;->r:Lo7/d0;

    const-string v1, "FLOAT"

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v9, Lo7/v;->r:Lo7/v;

    new-instance v11, Lo7/v;

    sget-object v12, Lo7/d0;->q:Lo7/d0;

    const-string v1, "INT64"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v11, Lo7/v;->s:Lo7/v;

    new-instance v13, Lo7/v;

    const-string v1, "UINT64"

    const/4 v2, 0x3

    const/4 v3, 0x3

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v13, Lo7/v;->t:Lo7/v;

    new-instance v14, Lo7/v;

    sget-object v15, Lo7/d0;->p:Lo7/d0;

    const-string v1, "INT32"

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object v0, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v14, Lo7/v;->u:Lo7/v;

    new-instance v16, Lo7/v;

    const-string v1, "FIXED64"

    const/4 v2, 0x5

    const/4 v3, 0x5

    move-object/from16 v0, v16

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v16, Lo7/v;->v:Lo7/v;

    new-instance v17, Lo7/v;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    const/4 v3, 0x6

    move-object/from16 v0, v17

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v17, Lo7/v;->w:Lo7/v;

    new-instance v18, Lo7/v;

    sget-object v19, Lo7/d0;->t:Lo7/d0;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v18, Lo7/v;->x:Lo7/v;

    new-instance v20, Lo7/v;

    sget-object v21, Lo7/d0;->u:Lo7/d0;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v20, Lo7/v;->y:Lo7/v;

    new-instance v22, Lo7/v;

    sget-object v23, Lo7/d0;->x:Lo7/d0;

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    move-object/from16 v0, v22

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v22, Lo7/v;->z:Lo7/v;

    new-instance v24, Lo7/v;

    sget-object v25, Lo7/d0;->v:Lo7/d0;

    const-string v1, "BYTES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, v24

    move-object/from16 v5, v25

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v24, Lo7/v;->A:Lo7/v;

    new-instance v26, Lo7/v;

    const-string v1, "UINT32"

    const/16 v2, 0xb

    const/16 v3, 0xb

    move-object/from16 v0, v26

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v26, Lo7/v;->B:Lo7/v;

    new-instance v27, Lo7/v;

    sget-object v28, Lo7/d0;->w:Lo7/d0;

    const-string v1, "ENUM"

    const/16 v2, 0xc

    const/16 v3, 0xc

    move-object/from16 v0, v27

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v27, Lo7/v;->C:Lo7/v;

    new-instance v29, Lo7/v;

    const-string v1, "SFIXED32"

    const/16 v2, 0xd

    const/16 v3, 0xd

    move-object/from16 v0, v29

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v29, Lo7/v;->D:Lo7/v;

    new-instance v30, Lo7/v;

    const-string v1, "SFIXED64"

    const/16 v2, 0xe

    const/16 v3, 0xe

    move-object/from16 v0, v30

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v30, Lo7/v;->E:Lo7/v;

    new-instance v31, Lo7/v;

    const-string v1, "SINT32"

    const/16 v2, 0xf

    const/16 v3, 0xf

    move-object/from16 v0, v31

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v31, Lo7/v;->F:Lo7/v;

    new-instance v32, Lo7/v;

    const-string v1, "SINT64"

    const/16 v2, 0x10

    const/16 v3, 0x10

    move-object/from16 v0, v32

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v32, Lo7/v;->G:Lo7/v;

    new-instance v33, Lo7/v;

    const-string v1, "GROUP"

    const/16 v2, 0x11

    const/16 v3, 0x11

    move-object/from16 v0, v33

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v33, Lo7/v;->H:Lo7/v;

    new-instance v7, Lo7/v;

    sget-object v34, Lo7/v$b;->d:Lo7/v$b;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    move-object v0, v7

    move-object/from16 v4, v34

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v7, Lo7/v;->I:Lo7/v;

    new-instance v35, Lo7/v;

    const-string v1, "FLOAT_LIST"

    const/16 v2, 0x13

    const/16 v3, 0x13

    move-object/from16 v0, v35

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v35, Lo7/v;->J:Lo7/v;

    new-instance v36, Lo7/v;

    const-string v1, "INT64_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x14

    move-object/from16 v0, v36

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v36, Lo7/v;->K:Lo7/v;

    new-instance v37, Lo7/v;

    const-string v1, "UINT64_LIST"

    const/16 v2, 0x15

    const/16 v3, 0x15

    move-object/from16 v0, v37

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v37, Lo7/v;->L:Lo7/v;

    new-instance v38, Lo7/v;

    const-string v1, "INT32_LIST"

    const/16 v2, 0x16

    const/16 v3, 0x16

    move-object/from16 v0, v38

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v38, Lo7/v;->M:Lo7/v;

    new-instance v39, Lo7/v;

    const-string v1, "FIXED64_LIST"

    const/16 v2, 0x17

    const/16 v3, 0x17

    move-object/from16 v0, v39

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v39, Lo7/v;->N:Lo7/v;

    new-instance v40, Lo7/v;

    const-string v1, "FIXED32_LIST"

    const/16 v2, 0x18

    const/16 v3, 0x18

    move-object/from16 v0, v40

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v40, Lo7/v;->O:Lo7/v;

    new-instance v41, Lo7/v;

    const-string v1, "BOOL_LIST"

    const/16 v2, 0x19

    const/16 v3, 0x19

    move-object/from16 v0, v41

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v41, Lo7/v;->P:Lo7/v;

    new-instance v42, Lo7/v;

    const-string v1, "STRING_LIST"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    move-object/from16 v0, v42

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v42, Lo7/v;->Q:Lo7/v;

    new-instance v21, Lo7/v;

    const-string v1, "MESSAGE_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object/from16 v0, v21

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v21, Lo7/v;->R:Lo7/v;

    new-instance v43, Lo7/v;

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object/from16 v0, v43

    move-object/from16 v5, v25

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v43, Lo7/v;->S:Lo7/v;

    new-instance v25, Lo7/v;

    const-string v1, "UINT32_LIST"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    move-object/from16 v0, v25

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v25, Lo7/v;->T:Lo7/v;

    new-instance v44, Lo7/v;

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    move-object/from16 v0, v44

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v44, Lo7/v;->U:Lo7/v;

    new-instance v45, Lo7/v;

    const-string v1, "SFIXED32_LIST"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    move-object/from16 v0, v45

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v45, Lo7/v;->V:Lo7/v;

    new-instance v46, Lo7/v;

    const-string v1, "SFIXED64_LIST"

    const/16 v2, 0x20

    const/16 v3, 0x20

    move-object/from16 v0, v46

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v46, Lo7/v;->W:Lo7/v;

    new-instance v47, Lo7/v;

    const-string v1, "SINT32_LIST"

    const/16 v2, 0x21

    const/16 v3, 0x21

    move-object/from16 v0, v47

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v47, Lo7/v;->X:Lo7/v;

    new-instance v48, Lo7/v;

    const-string v1, "SINT64_LIST"

    const/16 v2, 0x22

    const/16 v3, 0x22

    move-object/from16 v0, v48

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v48, Lo7/v;->Y:Lo7/v;

    new-instance v49, Lo7/v;

    sget-object v50, Lo7/v$b;->k:Lo7/v$b;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object/from16 v0, v49

    move-object/from16 v4, v50

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v49, Lo7/v;->Z:Lo7/v;

    new-instance v8, Lo7/v;

    const-string v1, "FLOAT_LIST_PACKED"

    const/16 v2, 0x24

    const/16 v3, 0x24

    move-object v0, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v8, Lo7/v;->a0:Lo7/v;

    new-instance v10, Lo7/v;

    const-string v1, "INT64_LIST_PACKED"

    const/16 v2, 0x25

    const/16 v3, 0x25

    move-object v0, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v10, Lo7/v;->b0:Lo7/v;

    new-instance v51, Lo7/v;

    const-string v1, "UINT64_LIST_PACKED"

    const/16 v2, 0x26

    const/16 v3, 0x26

    move-object/from16 v0, v51

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v51, Lo7/v;->c0:Lo7/v;

    new-instance v52, Lo7/v;

    const-string v1, "INT32_LIST_PACKED"

    const/16 v2, 0x27

    const/16 v3, 0x27

    move-object/from16 v0, v52

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v52, Lo7/v;->d0:Lo7/v;

    new-instance v53, Lo7/v;

    const-string v1, "FIXED64_LIST_PACKED"

    const/16 v2, 0x28

    const/16 v3, 0x28

    move-object/from16 v0, v53

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v53, Lo7/v;->e0:Lo7/v;

    new-instance v54, Lo7/v;

    const-string v1, "FIXED32_LIST_PACKED"

    const/16 v2, 0x29

    const/16 v3, 0x29

    move-object/from16 v0, v54

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v54, Lo7/v;->f0:Lo7/v;

    new-instance v55, Lo7/v;

    const-string v1, "BOOL_LIST_PACKED"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    move-object/from16 v0, v55

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v55, Lo7/v;->g0:Lo7/v;

    new-instance v19, Lo7/v;

    const-string v1, "UINT32_LIST_PACKED"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    move-object/from16 v0, v19

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v19, Lo7/v;->h0:Lo7/v;

    new-instance v56, Lo7/v;

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    move-object/from16 v0, v56

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v56, Lo7/v;->i0:Lo7/v;

    new-instance v28, Lo7/v;

    const-string v1, "SFIXED32_LIST_PACKED"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    move-object/from16 v0, v28

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v28, Lo7/v;->j0:Lo7/v;

    new-instance v57, Lo7/v;

    const-string v1, "SFIXED64_LIST_PACKED"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    move-object/from16 v0, v57

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v57, Lo7/v;->k0:Lo7/v;

    new-instance v58, Lo7/v;

    const-string v1, "SINT32_LIST_PACKED"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    move-object/from16 v0, v58

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v58, Lo7/v;->l0:Lo7/v;

    new-instance v15, Lo7/v;

    const-string v1, "SINT64_LIST_PACKED"

    const/16 v2, 0x30

    const/16 v3, 0x30

    move-object v0, v15

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v15, Lo7/v;->m0:Lo7/v;

    new-instance v12, Lo7/v;

    const-string v1, "GROUP_LIST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    move-object v0, v12

    move-object/from16 v4, v34

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v12, Lo7/v;->n0:Lo7/v;

    new-instance v0, Lo7/v;

    sget-object v63, Lo7/v$b;->p:Lo7/v$b;

    sget-object v64, Lo7/d0;->k:Lo7/d0;

    const-string v60, "MAP"

    const/16 v61, 0x32

    const/16 v62, 0x32

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lo7/v;-><init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V

    sput-object v0, Lo7/v;->o0:Lo7/v;

    const/16 v1, 0x33

    new-array v1, v1, [Lo7/v;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v3, 0x1

    aput-object v9, v1, v3

    const/4 v3, 0x2

    aput-object v11, v1, v3

    const/4 v3, 0x3

    aput-object v13, v1, v3

    const/4 v3, 0x4

    aput-object v14, v1, v3

    const/4 v3, 0x5

    aput-object v16, v1, v3

    const/4 v3, 0x6

    aput-object v17, v1, v3

    const/4 v3, 0x7

    aput-object v18, v1, v3

    const/16 v3, 0x8

    aput-object v20, v1, v3

    const/16 v3, 0x9

    aput-object v22, v1, v3

    const/16 v3, 0xa

    aput-object v24, v1, v3

    const/16 v3, 0xb

    aput-object v26, v1, v3

    const/16 v3, 0xc

    aput-object v27, v1, v3

    const/16 v3, 0xd

    aput-object v29, v1, v3

    const/16 v3, 0xe

    aput-object v30, v1, v3

    const/16 v3, 0xf

    aput-object v31, v1, v3

    const/16 v3, 0x10

    aput-object v32, v1, v3

    const/16 v3, 0x11

    aput-object v33, v1, v3

    const/16 v3, 0x12

    aput-object v7, v1, v3

    const/16 v3, 0x13

    aput-object v35, v1, v3

    const/16 v3, 0x14

    aput-object v36, v1, v3

    const/16 v3, 0x15

    aput-object v37, v1, v3

    const/16 v3, 0x16

    aput-object v38, v1, v3

    const/16 v3, 0x17

    aput-object v39, v1, v3

    const/16 v3, 0x18

    aput-object v40, v1, v3

    const/16 v3, 0x19

    aput-object v41, v1, v3

    const/16 v3, 0x1a

    aput-object v42, v1, v3

    const/16 v3, 0x1b

    aput-object v21, v1, v3

    const/16 v3, 0x1c

    aput-object v43, v1, v3

    const/16 v3, 0x1d

    aput-object v25, v1, v3

    const/16 v3, 0x1e

    aput-object v44, v1, v3

    const/16 v3, 0x1f

    aput-object v45, v1, v3

    const/16 v3, 0x20

    aput-object v46, v1, v3

    const/16 v3, 0x21

    aput-object v47, v1, v3

    const/16 v3, 0x22

    aput-object v48, v1, v3

    const/16 v3, 0x23

    aput-object v49, v1, v3

    const/16 v3, 0x24

    aput-object v8, v1, v3

    const/16 v3, 0x25

    aput-object v10, v1, v3

    const/16 v3, 0x26

    aput-object v51, v1, v3

    const/16 v3, 0x27

    aput-object v52, v1, v3

    const/16 v3, 0x28

    aput-object v53, v1, v3

    const/16 v3, 0x29

    aput-object v54, v1, v3

    const/16 v3, 0x2a

    aput-object v55, v1, v3

    const/16 v3, 0x2b

    aput-object v19, v1, v3

    const/16 v3, 0x2c

    aput-object v56, v1, v3

    const/16 v3, 0x2d

    aput-object v28, v1, v3

    const/16 v3, 0x2e

    aput-object v57, v1, v3

    const/16 v3, 0x2f

    aput-object v58, v1, v3

    const/16 v3, 0x30

    aput-object v15, v1, v3

    const/16 v3, 0x31

    aput-object v12, v1, v3

    const/16 v3, 0x32

    aput-object v0, v1, v3

    sput-object v1, Lo7/v;->r0:[Lo7/v;

    new-array v0, v2, [Ljava/lang/reflect/Type;

    sput-object v0, Lo7/v;->q0:[Ljava/lang/reflect/Type;

    invoke-static {}, Lo7/v;->values()[Lo7/v;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lo7/v;

    sput-object v1, Lo7/v;->p0:[Lo7/v;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lo7/v;->p0:[Lo7/v;

    iget v5, v3, Lo7/v;->b:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILo7/v$b;Lo7/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo7/v$b;",
            "Lo7/d0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo7/v;->b:I

    iput-object p4, p0, Lo7/v;->d:Lo7/v$b;

    iput-object p5, p0, Lo7/v;->a:Lo7/d0;

    sget-object p1, Lo7/v$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lo7/v;->k:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lo7/d0;->c()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo7/v;->k:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lo7/d0;->c()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lo7/v;->k:Ljava/lang/Class;

    :goto_0
    const/4 p1, 0x0

    sget-object v0, Lo7/v$b;->b:Lo7/v$b;

    if-ne p4, v0, :cond_2

    sget-object p4, Lo7/v$a;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p4, p4, p5

    if-eq p4, p3, :cond_2

    if-eq p4, p2, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lo7/v;->p:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo7/v;
    .locals 1

    const-class v0, Lo7/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo7/v;

    return-object p0
.end method

.method public static values()[Lo7/v;
    .locals 1

    sget-object v0, Lo7/v;->r0:[Lo7/v;

    invoke-virtual {v0}, [Lo7/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo7/v;

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lo7/v;->b:I

    return v0
.end method
