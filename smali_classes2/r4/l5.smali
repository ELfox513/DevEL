.class public final Lr4/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public final c:Lr4/o5;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/o5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/o5;-><init>(Lr4/s5;)V

    iput-object v0, p0, Lr4/l5;->c:Lr4/o5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr4/l5;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lr4/l5;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lr4/l5;
    .locals 0

    iput-object p1, p0, Lr4/l5;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Lr4/l5;
    .locals 0

    iput-object p1, p0, Lr4/l5;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public final c()Lr4/u5;
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lr4/l5;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v11, Lr4/t5;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lr4/l5;->d:Ljava/util/List;

    const/4 v7, 0x0

    iget-object v8, v0, Lr4/l5;->e:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lr4/t5;-><init>(Landroid/net/Uri;Ljava/lang/String;Lr4/p5;Lr4/k5;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lr4/s5;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    move-object v4, v11

    new-instance v8, Lr4/u5;

    iget-object v1, v0, Lr4/l5;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v2, v1

    new-instance v3, Lr4/n5;

    const-wide/16 v10, 0x0

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lr4/n5;-><init>(JJZZZLr4/s5;)V

    new-instance v5, Lr4/r5;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const v25, -0x800001

    const v26, -0x800001

    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v26}, Lr4/r5;-><init>(JJJFF)V

    sget-object v6, Lr4/y5;->t:Lr4/y5;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lr4/u5;-><init>(Ljava/lang/String;Lr4/n5;Lr4/t5;Lr4/r5;Lr4/y5;Lr4/s5;)V

    return-object v8
.end method
