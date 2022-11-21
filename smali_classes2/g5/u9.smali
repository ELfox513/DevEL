.class public final Lg5/u9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/s3;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lg5/ba;


# direct methods
.method public constructor <init>(Lg5/ba;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg5/u9;->b:Lg5/ba;

    iput-object p2, p0, Lg5/u9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lg5/u9;->b:Lg5/ba;

    iget-object p5, p0, Lg5/u9;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, p5}, Lg5/ba;->j(ILjava/lang/Throwable;[BLjava/lang/String;)V

    return-void
.end method
