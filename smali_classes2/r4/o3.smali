.class public final Lr4/o3;
.super Lr4/n6;
.source "SourceFile"


# static fields
.field public static final v:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/o3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:I

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:Lr4/e5;

.field public final s:I

.field public final t:Lr4/f04;

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/n3;->a:Lr4/d3;

    sput-object v0, Lr4/o3;->v:Lr4/d3;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v9}, Lr4/o3;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILr4/e5;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILr4/e5;IZ)V
    .locals 13

    move v4, p1

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    if-eq v4, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    move-object/from16 v6, p5

    move/from16 v7, p6

    goto :goto_0

    :cond_0
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p8 .. p8}, Lr4/e3;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, index="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", format_supported="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object/from16 v6, p5

    move/from16 v7, p6

    const-string v0, "Source error"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ": null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move-object v2, p2

    move/from16 v3, p4

    move v4, p1

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lr4/o3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr4/e5;ILr4/f04;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr4/e5;ILr4/f04;JZ)V
    .locals 8

    move-object v6, p0

    move/from16 v7, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lr4/n6;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v7, :cond_1

    move v2, p4

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v2, p4

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lr4/ja;->a(Z)V

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lr4/ja;->a(Z)V

    iput v2, v6, Lr4/o3;->k:I

    move-object v0, p5

    iput-object v0, v6, Lr4/o3;->p:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Lr4/o3;->q:I

    move-object v0, p7

    iput-object v0, v6, Lr4/o3;->r:Lr4/e5;

    move/from16 v0, p8

    iput v0, v6, Lr4/o3;->s:I

    move-object/from16 v0, p9

    iput-object v0, v6, Lr4/o3;->t:Lr4/f04;

    iput-boolean v7, v6, Lr4/o3;->u:Z

    return-void
.end method

.method public static a(Ljava/io/IOException;I)Lr4/o3;
    .locals 2

    new-instance v0, Lr4/o3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lr4/o3;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/String;ILr4/e5;IZI)Lr4/o3;
    .locals 11

    if-nez p3, :cond_0

    const/4 v0, 0x4

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    move v8, p4

    :goto_0
    new-instance v10, Lr4/o3;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v10

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lr4/o3;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILr4/e5;IZ)V

    return-object v10
.end method

.method public static c(Ljava/lang/RuntimeException;I)Lr4/o3;
    .locals 2

    new-instance v0, Lr4/o3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lr4/o3;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method


# virtual methods
.method public final d(Lr4/f04;)Lr4/o3;
    .locals 14

    new-instance v13, Lr4/o3;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget v0, Lr4/lc;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Lr4/n6;->a:I

    iget v4, p0, Lr4/o3;->k:I

    iget-object v5, p0, Lr4/o3;->p:Ljava/lang/String;

    iget v6, p0, Lr4/o3;->q:I

    iget-object v7, p0, Lr4/o3;->r:Lr4/e5;

    iget v8, p0, Lr4/o3;->s:I

    iget-wide v10, p0, Lr4/n6;->b:J

    iget-boolean v12, p0, Lr4/o3;->u:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lr4/o3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILr4/e5;ILr4/f04;JZ)V

    return-object v13
.end method
