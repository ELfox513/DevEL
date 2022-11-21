.class public final Lg5/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lg5/s3;

.field public final b:I

.field public final d:Ljava/lang/Throwable;

.field public final k:[B

.field public final p:Ljava/lang/String;

.field public final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lg5/s3;ILjava/lang/Throwable;[BLjava/util/Map;Lg5/t3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lg5/u3;->a:Lg5/s3;

    iput p3, p0, Lg5/u3;->b:I

    iput-object p4, p0, Lg5/u3;->d:Ljava/lang/Throwable;

    iput-object p5, p0, Lg5/u3;->k:[B

    iput-object p1, p0, Lg5/u3;->p:Ljava/lang/String;

    iput-object p6, p0, Lg5/u3;->q:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lg5/u3;->a:Lg5/s3;

    iget-object v1, p0, Lg5/u3;->p:Ljava/lang/String;

    iget v2, p0, Lg5/u3;->b:I

    iget-object v3, p0, Lg5/u3;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lg5/u3;->k:[B

    iget-object v5, p0, Lg5/u3;->q:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lg5/s3;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
