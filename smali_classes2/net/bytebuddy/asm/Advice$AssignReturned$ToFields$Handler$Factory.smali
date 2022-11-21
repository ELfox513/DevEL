.class public final enum Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler$Factory<",
        "Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

.field private static final TO_FIELDS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_FIELD_DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_FIELD_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_FIELD_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_FIELD_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;

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

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELDS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$ToField;

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

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "index"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "declaringType"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "typing"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;",
            ">;"
        }
    .end annotation

    const-class v0, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;ZLnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Z",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "+",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/Advice$AssignReturned$Handler;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p2, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELDS_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {p3, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p2

    const-class p3, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {p2, p3}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p2, v0

    new-instance v2, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler;

    sget-object v3, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_INDEX:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_VALUE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_DECLARING_TYPE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v5

    const-class v6, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v6, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler$Factory;->TO_FIELD_TYPING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v1

    const-class v6, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-interface {v1, v6}, Lnet/bytebuddy/description/annotation/AnnotationValue;->load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    move-result-object v1

    const-class v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v1, v6}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-direct {v2, v3, v4, v5, v1}, Lnet/bytebuddy/asm/Advice$AssignReturned$ToFields$Handler;-><init>(ILjava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
