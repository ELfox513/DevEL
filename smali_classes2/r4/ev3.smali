.class public final Lr4/ev3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ka;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lr4/ka;->a:Lr4/ka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/ev3;->a:Lr4/ka;

    return-void
.end method


# virtual methods
.method public final a(Lr4/h24;[IILr4/kw3;Lr4/o33;)Lr4/fv3;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h24;",
            "[II",
            "Lr4/kw3;",
            "Lr4/o33<",
            "Lr4/dv3;",
            ">;)",
            "Lr4/fv3;"
        }
    .end annotation

    new-instance v15, Lr4/fv3;

    move-object/from16 v14, p0

    iget-object v13, v14, Lr4/ev3;->a:Lr4/ka;

    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const v11, 0x3f333333    # 0.7f

    const/high16 v12, 0x3f400000    # 0.75f

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v16, v13

    move-object/from16 v13, p5

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lr4/fv3;-><init>(Lr4/h24;[IILr4/kw3;JJJFFLjava/util/List;Lr4/ka;)V

    return-object v15
.end method
