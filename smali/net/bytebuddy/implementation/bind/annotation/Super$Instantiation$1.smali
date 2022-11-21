.class final enum Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation$1;
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
    .locals 8
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

    new-instance v7, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;

    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {p3, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    const-class v2, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->d()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {p3, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {}, Lnet/bytebuddy/implementation/bind/annotation/Super$Instantiation;->f()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    invoke-interface {p3, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$ForSuperMethodByConstructor;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/Implementation$Target;Ljava/util/List;ZZ)V

    return-object v7
.end method
