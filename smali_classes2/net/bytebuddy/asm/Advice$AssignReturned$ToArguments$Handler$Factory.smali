.class public final enum Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

.field private static final TO_ARGUMENTS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_ARGUMENT_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_ARGUMENT_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_ARGUMENT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENTS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$ToArgument;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "index"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "typing"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;",
            ">;"
        }
    .end annotation

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;ZLnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Z",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "+",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;"
        }
    .end annotation

    const-class p2, Ljava/lang/Integer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENTS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3, v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    const-class v1, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {p3, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    sget-object v4, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    invoke-interface {v4, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    new-instance v5, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler;

    sget-object v6, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v6

    invoke-interface {v6, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler$Factory;->TO_ARGUMENT_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3, v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    const-class v7, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v3, v7}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v3

    const-class v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v7}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {v5, v4, v6, v3}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToArguments$Handler;-><init>(IILnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An argument cannot have a negative index for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-object v0
.end method
