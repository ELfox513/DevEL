.class public final enum Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForDeclaredMethods"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;

    return-object v0
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isBridge()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-static {p2}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {v1, p2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;

    invoke-direct {v2, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;

    new-instance p2, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;

    invoke-direct {p2, v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Simple;-><init>(Ljava/util/LinkedHashMap;)V

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Empty;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked$Delegation;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Lnet/bytebuddy/dynamic/scaffold/MethodGraph;Ljava/util/Map;)V

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$ForDeclaredMethods;->compile(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    move-result-object p1

    return-object p1
.end method
