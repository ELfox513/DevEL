.class public Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;
.super Lnet/bytebuddy/description/method/MethodList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedMethods"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/MethodList$AbstractBase<",
        "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/utility/ConstructorComparator;->INSTANCE:Lnet/bytebuddy/utility/ConstructorComparator;

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/utility/GraalImageCode;->sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    sget-object v2, Lnet/bytebuddy/utility/MethodComparator;->INSTANCE:Lnet/bytebuddy/utility/MethodComparator;

    invoke-virtual {v1, p1, v2}, Lnet/bytebuddy/utility/GraalImageCode;->sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->constructors:Ljava/util/List;

    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->methods:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Constructor;[Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->get(I)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->constructors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->methods:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->constructors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->constructors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
