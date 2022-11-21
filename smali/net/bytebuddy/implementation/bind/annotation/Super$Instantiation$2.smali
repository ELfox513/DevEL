.class final enum Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$2;
.super Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bind/annotation/Super$1;)V

    return-void
.end method


# virtual methods
.method public proxyFor(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Target;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/implementation/bind/annotation/Super;",
            ">;)",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
        }
    .end annotation

    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByReflectionFactory;

    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->d()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-interface {p3, v2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->f()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v3

    invoke-interface {p3, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {v1, p1, p2, v2, p3}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByReflectionFactory;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;ZZ)V

    return-object v1
.end method
