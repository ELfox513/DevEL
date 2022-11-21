.class public final Lr4/qa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public final b:I

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lr4/qa;->b:I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lr4/qa;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lr4/qa;
    .locals 0

    iput-object p1, p0, Lr4/qa;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lr4/qa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lr4/qa;"
        }
    .end annotation

    iput-object p1, p0, Lr4/qa;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final c(J)Lr4/qa;
    .locals 0

    iput-wide p1, p0, Lr4/qa;->d:J

    return-object p0
.end method

.method public final d(I)Lr4/qa;
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lr4/qa;->e:I

    return-object p0
.end method

.method public final e()Lr4/vc;
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lr4/qa;->a:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v16, Lr4/vc;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lr4/qa;->c:Ljava/util/Map;

    iget-wide v8, v0, Lr4/qa;->d:J

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    iget v13, v0, Lr4/qa;->e:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lr4/vc;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lr4/rb;)V

    return-object v16

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
