.class final enum Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver$2;
.super Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$1;)V

    return-void
.end method


# virtual methods
.method public identify(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 0

    return-object p1
.end method
