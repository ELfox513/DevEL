.class final enum Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$2;
.super Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;-><init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;

    invoke-direct {v0, p1, p3, p4, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/SortedMap;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method
