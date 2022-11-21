.class public final Lb5/m8;
.super Lb5/l8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb5/l8;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lb5/p8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb5/p8;"
        }
    .end annotation

    check-cast p1, Lb5/v8;

    iget-object p1, p1, Lb5/v8;->zza:Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lb5/v8;

    iget-object p1, p1, Lb5/v8;->zza:Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lb5/ea;)Z
    .locals 0

    instance-of p1, p1, Lb5/v8;

    return p1
.end method
