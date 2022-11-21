.class final enum Lnet/bytebuddy/TypeCache$Sort$3;
.super Lnet/bytebuddy/TypeCache$Sort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache$Sort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/TypeCache$Sort;-><init>(Ljava/lang/String;ILnet/bytebuddy/TypeCache$1;)V

    return-void
.end method


# virtual methods
.method public wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic wrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/TypeCache$Sort$3;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
