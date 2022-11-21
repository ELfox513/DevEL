.class public final enum Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

.field private static final TO_ALL_ARGUMENTS_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_ALL_ARGUMENTS_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "index"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->TO_ALL_ARGUMENTS_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "typing"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->TO_ALL_ARGUMENTS_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;",
            ">;"
        }
    .end annotation

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;ZLnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Z",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "+",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;"
        }
    .end annotation

    new-instance p1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler;

    sget-object p2, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->TO_ALL_ARGUMENTS_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler$Factory;->TO_ALL_ARGUMENTS_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p3

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object p3

    const-class v0, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {p1, p2, p3}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToAllArguments$Handler;-><init>(ILnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
