.class public final Lr4/wz2;
.super Lr4/pz2;
.source "SourceFile"


# instance fields
.field public a:Lr4/m13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/m13<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr4/m13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/m13<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lr4/vz2;

.field public k:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lr4/rz2;->a:Lr4/m13;

    sget-object v1, Lr4/sz2;->a:Lr4/m13;

    invoke-direct {p0}, Lr4/pz2;-><init>()V

    iput-object v0, p0, Lr4/wz2;->a:Lr4/m13;

    iput-object v1, p0, Lr4/wz2;->b:Lr4/m13;

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/wz2;->d:Lr4/vz2;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lr4/wz2;->k:Ljava/net/HttpURLConnection;

    invoke-static {}, Lr4/qz2;->b()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final d(Lr4/vz2;II)Ljava/net/HttpURLConnection;
    .locals 0

    new-instance p2, Lr4/tz2;

    const/16 p3, 0x109

    invoke-direct {p2, p3}, Lr4/tz2;-><init>(I)V

    iput-object p2, p0, Lr4/wz2;->a:Lr4/m13;

    new-instance p2, Lr4/uz2;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Lr4/uz2;-><init>(I)V

    iput-object p2, p0, Lr4/wz2;->b:Lr4/m13;

    iput-object p1, p0, Lr4/wz2;->d:Lr4/vz2;

    iget-object p1, p0, Lr4/wz2;->a:Lr4/m13;

    invoke-interface {p1}, Lr4/m13;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lr4/wz2;->b:Lr4/m13;

    invoke-interface {p2}, Lr4/m13;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lr4/qz2;->a(II)V

    iget-object p1, p0, Lr4/wz2;->d:Lr4/vz2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lr4/vz2;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lr4/wz2;->k:Ljava/net/HttpURLConnection;

    return-object p1
.end method
