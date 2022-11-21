.class public final Lr4/ut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:I

.field public final e:Landroid/os/Bundle;

.field public final f:Landroid/os/Bundle;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lr4/ut;->a:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/ut;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/ut;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lr4/ut;->d:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lr4/ut;->e:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lr4/ut;->f:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr4/ut;->g:Ljava/util/List;

    iput v0, p0, Lr4/ut;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/ut;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/ut;->j:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lr4/ut;->k:I

    return-void
.end method


# virtual methods
.method public final a()Lr4/tt;
    .locals 28

    move-object/from16 v0, p0

    new-instance v27, Lr4/tt;

    move-object/from16 v1, v27

    iget-object v5, v0, Lr4/ut;->a:Landroid/os/Bundle;

    iget-object v7, v0, Lr4/ut;->b:Ljava/util/List;

    iget-boolean v8, v0, Lr4/ut;->c:Z

    iget v9, v0, Lr4/ut;->d:I

    iget-object v15, v0, Lr4/ut;->e:Landroid/os/Bundle;

    iget-object v2, v0, Lr4/ut;->f:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lr4/ut;->g:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lr4/ut;->h:I

    move/from16 v22, v2

    iget-object v2, v0, Lr4/ut;->i:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lr4/ut;->j:Ljava/util/List;

    move-object/from16 v24, v2

    iget v2, v0, Lr4/ut;->k:I

    move/from16 v25, v2

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lr4/tt;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lr4/uy;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLr4/jt;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-object v27
.end method

.method public final b(Landroid/os/Bundle;)Lr4/ut;
    .locals 0

    iput-object p1, p0, Lr4/ut;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public final c(Ljava/util/List;)Lr4/ut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lr4/ut;"
        }
    .end annotation

    iput-object p1, p0, Lr4/ut;->b:Ljava/util/List;

    return-object p0
.end method

.method public final d(Z)Lr4/ut;
    .locals 0

    iput-boolean p1, p0, Lr4/ut;->c:Z

    return-object p0
.end method

.method public final e(I)Lr4/ut;
    .locals 0

    iput p1, p0, Lr4/ut;->d:I

    return-object p0
.end method

.method public final f(I)Lr4/ut;
    .locals 0

    iput p1, p0, Lr4/ut;->h:I

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lr4/ut;
    .locals 0

    iput-object p1, p0, Lr4/ut;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lr4/ut;
    .locals 0

    iput p1, p0, Lr4/ut;->k:I

    return-object p0
.end method
