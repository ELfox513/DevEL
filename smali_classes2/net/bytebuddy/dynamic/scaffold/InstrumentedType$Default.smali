.class public Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static final KEYWORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final annotationDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousClass:Z

.field private final auxiliaryFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final declaredTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final enclosingType:Lnet/bytebuddy/description/type/TypeDescription;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final fieldTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

.field private final localClass:Z

.field private final methodTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final nestHost:Lnet/bytebuddy/description/type/TypeDescription;

.field private final nestMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubclasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final record:Z

.field private final recordComponentTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

.field private final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "abstract"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "continue"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "for"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "new"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "switch"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "assert"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "default"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "goto"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "package"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "synchronized"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "boolean"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "do"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "if"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "private"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "this"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "break"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "double"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "implements"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "protected"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "throw"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "byte"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "else"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "import"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "public"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "throws"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "case"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "enum"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "instanceof"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "return"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "transient"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "catch"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "extends"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "int"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "short"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "try"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "char"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "final"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "interface"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "static"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "void"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "class"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "finally"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "long"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "strictfp"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "volatile"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "const"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "float"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "native"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "super"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "while"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->KEYWORDS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 2
    .param p3    # Lnet/bytebuddy/description/type/TypeDescription$Generic;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p13    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p14    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p15    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p17    # Ljava/util/List;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;ZZZ",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    move-object v1, p7

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-object v1, p12

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-object v1, p13

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p15

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move/from16 v1, p18

    iput-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v1, p22

    iput-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    return-void
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->KEYWORDS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "package-info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private static isValidIdentifier([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    invoke-virtual {v0, p0, p2, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result p2

    invoke-static {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/field/FieldList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/MethodList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$WithResolvedErasure;-><init>(Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    return-object v0
.end method

.method public getLoadedTypeInitializer()Lnet/bytebuddy/implementation/LoadedTypeInitializer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    :goto_0
    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    invoke-static {p0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 4
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/type/RecordComponentList$ForTokens;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithResolvedErasure;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getTypeInitializer()Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;->attachVariables(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    return v0
.end method

.method public isRecord()Z
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming super class for given instance."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    iget-boolean v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validated()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier([Ljava/lang/String;)Z

    move-result v1

    const-string v2, " for "

    if-eqz v1, :cond_76

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v1

    const v3, -0x27620

    and-int/2addr v1, v3

    const-string v3, "Illegal modifiers "

    if-nez v1, :cond_75

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPackageType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v1

    const/16 v4, 0x1600

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->SUPER_CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v1, v4}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invisible super type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal type annotations on super class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal super class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->INTERFACE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invisible interface type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already implemented interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal type annotations on interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot define throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to be generic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Illegal interface bound "

    const-string v8, "Duplicate bound "

    const-string v9, "Illegal type variable bound "

    const-string v10, " does not define at least one bound"

    const-string v11, "Type variable "

    const-string v12, "Illegal type annotation on \'"

    const-string v14, "Illegal type variable name \'"

    const-string v15, "Duplicate type variable symbol \'"

    const-string v7, "\' for "

    const-string v13, " of "

    if-eqz v5, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v17, v1

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-static {v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->ofFormalTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    sget-object v14, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v12, v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_11

    sget-object v14, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v12, v14}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-eqz v16, :cond_e

    invoke-interface {v12}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v14

    invoke-virtual {v14}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-interface {v12}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_6
    const/16 v16, 0x1

    goto :goto_5

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal type annotations on type variable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v16, :cond_13

    move-object/from16 v1, v17

    goto/16 :goto_4

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-string v4, "Cannot define array type or primitive type "

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_7

    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + as enclosing type for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v17

    if-nez v17, :cond_1a

    goto :goto_8

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot enclose type declaration in class initializer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_8
    move-object/from16 v17, v3

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_9

    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as declaring type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    if-nez v1, :cond_1f

    if-nez v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isLocalType()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isAnonymousType()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_9

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot define an anonymous or local class without a declaring type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    :goto_9
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v18

    if-nez v18, :cond_21

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_21

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    move-object/from16 v5, v19

    goto :goto_a

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate definition of declared type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " + as declared type for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v18, v1

    const-string v1, " + within different package then "

    if-eqz v5, :cond_26

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v19

    if-nez v19, :cond_25

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v19

    if-nez v19, :cond_25

    invoke-interface {v5, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v5, v20

    goto :goto_b

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate definition of nest member "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot define nest member "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " + as nest member of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v5

    if-nez v5, :cond_74

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_74

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSamePackage(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_73

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_c

    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot assign permitted subclass "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " on "

    move-object/from16 v19, v15

    const-string v15, "Cannot add "

    move-object/from16 v20, v14

    const-string v14, "Duplicate annotation "

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v21, v3

    sget-object v3, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-interface {v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isAnnotation()Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v3, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    invoke-interface {v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isPackageType()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-interface {v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_e

    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    :goto_e
    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v3, v21

    goto :goto_d

    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    move-object/from16 v21, v7

    const-string v7, "Illegal type annotations on "

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v3

    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription;->asSignatureToken()Lnet/bytebuddy/description/field/FieldDescription$SignatureToken;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static/range {v22 .. v22}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v3

    const v22, -0x250e0

    and-int v3, v3, v22

    if-nez v3, :cond_36

    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    move-object/from16 v22, v1

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->FIELD:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_10

    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invisible field type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v24, v3

    sget-object v3, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-interface {v7, v3}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v7}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v3, v24

    goto :goto_11

    :cond_31
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    move-object/from16 v7, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    goto/16 :goto_f

    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal field type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal field modifiers "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal field name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate field definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v22, v3

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, -0x1e00

    if-nez v3, :cond_70

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/description/ModifierReviewable$AbstractBase;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPublic()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPrivate()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_13

    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Methods declared by an interface must be public or private "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :goto_13
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_14
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_46

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v1

    move-object/from16 v1, v24

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v24, v7

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_45

    invoke-static {v7}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->ofFormalTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Z

    move-result v7

    if-eqz v7, :cond_43

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    const/16 v27, 0x0

    :goto_15
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_41

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v3

    move-object/from16 v3, v28

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object/from16 v28, v5

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->TYPE_VARIABLE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v3, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v27, :cond_3d

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->getSort()Lnet/bytebuddy/description/type/TypeDefinition$Sort;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->isTypeVariable()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_3c

    goto :goto_16

    :cond_3c
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3d
    :goto_16
    move-object/from16 v5, v28

    move-object/from16 v3, v29

    const/16 v27, 0x1

    goto :goto_15

    :cond_3e
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3f
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type annotations on bound "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_40
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_41
    move-object/from16 v29, v3

    move-object/from16 v28, v5

    if-eqz v27, :cond_42

    move-object/from16 v7, v24

    move-object/from16 v1, v25

    move-object/from16 v5, v28

    move-object/from16 v3, v29

    goto/16 :goto_14

    :cond_42
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_43
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_44
    move-object/from16 v5, v21

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_45
    move-object/from16 v5, v21

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v19

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_46
    move-object/from16 v25, v1

    move-object/from16 v28, v5

    move-object/from16 v24, v7

    move-object/from16 v1, v19

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v19

    if-nez v19, :cond_6f

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_49

    move-object/from16 v19, v1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_47

    goto/16 :goto_17

    :cond_47
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The void non-type must not be annotated for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A constructor must return void "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    move-object/from16 v19, v1

    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_RETURN:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v3, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_17

    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invisible return type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    :goto_17
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    check-cast v3, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-object/from16 v20, v5

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    move-object/from16 v23, v6

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->METHOD_PARAMETER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_57

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_19

    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invisible parameter type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4d
    :goto_19
    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithOptionalName;->isNamed()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-static {v5}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_1a

    :cond_4e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal parameter name of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate parameter name of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    :goto_1a
    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterDescription;->hasModifiers()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v5

    const v6, -0x9011

    and-int/2addr v5, v6

    if-nez v5, :cond_51

    goto :goto_1b

    :cond_51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal modifiers of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    :goto_1b
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v27, v1

    move-object/from16 v1, v26

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    move-object/from16 v26, v6

    sget-object v6, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    invoke-interface {v1, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    move-object/from16 v6, v26

    move-object/from16 v1, v27

    goto :goto_1c

    :cond_53
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_54
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_55
    move-object/from16 v5, v20

    move-object/from16 v3, v21

    move-object/from16 v6, v23

    goto/16 :goto_18

    :cond_56
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type annotations on parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal parameter type of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v1, v28

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->EXCEPTION:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5c

    sget-object v6, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator$ForTypeAnnotations;

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_59

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v6, v0}, Lnet/bytebuddy/description/ByteCodeElement;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v6

    if-eqz v6, :cond_5a

    goto :goto_1d

    :cond_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invisible exception type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v24

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal exception type "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    move-object/from16 v6, v24

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_61

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v5

    move-object/from16 v5, v21

    check-cast v5, Lnet/bytebuddy/description/annotation/AnnotationDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result v21

    if-eqz v21, :cond_5e

    sget-object v21, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    goto :goto_1f

    :cond_5e
    sget-object v21, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    :goto_1f
    move-object/from16 v26, v6

    move-object/from16 v6, v21

    invoke-interface {v5, v6}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->isSupportedOn(Ljava/lang/annotation/ElementType;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getAnnotationType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    goto :goto_1e

    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_61
    move-object/from16 v26, v6

    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v3

    if-eqz v3, :cond_63

    invoke-interface {v4, v3}, Lnet/bytebuddy/description/method/MethodDescription;->isDefaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_20

    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal default value "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    :goto_20
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    if-eqz v3, :cond_65

    sget-object v5, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;->RECEIVER:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Validator;

    invoke-interface {v3, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_64

    goto :goto_21

    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal receiver type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    :goto_21
    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_67

    if-nez v3, :cond_66

    move-object/from16 v28, v1

    goto :goto_23

    :cond_66
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Static method "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " defines a non-null receiver "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_67
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v5

    const-string v6, " defines an illegal receiver "

    if-eqz v5, :cond_6a

    if-eqz v3, :cond_69

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    move-object/from16 v28, v1

    if-nez v18, :cond_68

    move-object v1, v0

    goto :goto_22

    :cond_68
    move-object/from16 v1, v18

    :goto_22
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_23

    :cond_69
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    move-object/from16 v28, v1

    if-eqz v3, :cond_6b

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    :goto_23
    move-object/from16 v21, v20

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v1, v25

    move-object/from16 v5, v28

    move-object/from16 v20, v7

    move-object/from16 v7, v26

    goto/16 :goto_12

    :cond_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal type annotations on return type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal return type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal method name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal explicit declaration of a type initializer by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate method signature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_72
    return-object v0

    :cond_73
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot define nest host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_74
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " + as nest host for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    move-object v5, v3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getModifiers()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal type name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :goto_24
    throw v1

    :goto_25
    goto :goto_24
.end method

.method public withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    move-object/from16 v12, p1

    invoke-static {v11, v12}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withAnnotations(Ljava/util/List;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v19, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    const/16 v20, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withAnonymousClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withAuxiliaryField(Lnet/bytebuddy/description/field/FieldDescription$Token;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v9, Ljava/util/HashMap;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    invoke-direct {v9, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already mapped to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and not "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v25, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v2, v25

    iget-object v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v10

    move-object/from16 v15, p1

    invoke-virtual {v15, v10}, Lnet/bytebuddy/description/field/FieldDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object v10

    invoke-static {v8, v10}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    new-instance v14, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    move-object/from16 v16, v14

    const/4 v15, 0x2

    new-array v15, v15, [Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    const/16 v17, 0x0

    move-object/from16 v26, v2

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    aput-object v2, v15, v17

    new-instance v2, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;

    move-object/from16 v27, v3

    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$ForStaticField;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v15, v1

    move-object/from16 v1, v16

    invoke-direct {v1, v15}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;-><init>([Lnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v23, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v24, v1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct/range {v2 .. v24}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v25
.end method

.method public bridge synthetic withAuxiliaryField(Lnet/bytebuddy/description/field/FieldDescription$Token;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withAuxiliaryField(Lnet/bytebuddy/description/field/FieldDescription$Token;Ljava/lang/Object;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 27

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v26, v2

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withDeclaredTypes(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withDeclaringType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v16

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withEnclosingMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    sget-object v15, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1    # Lnet/bytebuddy/description/type/TypeDescription;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withEnclosingType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Lnet/bytebuddy/description/field/FieldDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    new-instance v14, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;

    move-object v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/4 v1, 0x1

    aput-object p1, v15, v1

    invoke-direct {v14, v15}, Lnet/bytebuddy/implementation/LoadedTypeInitializer$Compound;-><init>([Lnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-object/from16 v13, p1

    invoke-interface {v12, v13}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v12

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInitializer(Lnet/bytebuddy/implementation/LoadedTypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInitializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v7

    move-object/from16 v8, p1

    invoke-interface {v8, v7}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v20, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    const/16 v19, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withLocalClass(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Lnet/bytebuddy/description/method/MethodDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v3, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withModifiers(I)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withName(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v15

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v15

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v15

    iget-boolean v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v15

    iget-boolean v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v15

    iget-boolean v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move-object/from16 v21, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    sget-object v1, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    :cond_0
    move-object/from16 v22, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v1, v24

    move/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    move/from16 v21, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withNestHost(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    sget-object v22, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withNestMembers(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withPermittedSubclasses(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26
    .param p1    # Lnet/bytebuddy/description/type/TypeList;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v16, v15

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v17, v15

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v18, v15

    if-eqz v1, :cond_1

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v15, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_1
    :goto_0
    move-object/from16 v25, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withPermittedSubclasses(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1    # Lnet/bytebuddy/description/type/TypeList;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withPermittedSubclasses(Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withRecord(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v10, v1

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    move/from16 v21, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withRecord(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withRecord(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withRecordComponent(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Lnet/bytebuddy/description/type/RecordComponentDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/RecordComponentDescription$Token;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    const/16 v21, 0x1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withRecordComponent(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withRecordComponent(Lnet/bytebuddy/description/type/RecordComponentDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 26

    move-object/from16 v0, p0

    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v5, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Lnet/bytebuddy/description/type/TypeVariableToken;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeVariableToken;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v25, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method

.method public bridge synthetic withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->withTypeVariable(Lnet/bytebuddy/description/type/TypeVariableToken;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object p1

    return-object p1
.end method

.method public withTypeVariables(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p2

    invoke-interface {v2, v0, v3}, Lnet/bytebuddy/dynamic/Transformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeVariableToken;

    goto :goto_1

    :cond_0
    move-object/from16 v2, p2

    :goto_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_0

    :cond_1
    new-instance v24, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    move-object/from16 v1, v24

    iget-object v2, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->name:Ljava/lang/String;

    iget v3, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->modifiers:I

    iget-object v4, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->superClass:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->interfaceTypes:Ljava/util/List;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->fieldTokens:Ljava/util/List;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->auxiliaryFields:Ljava/util/Map;

    iget-object v9, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->methodTokens:Ljava/util/List;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->recordComponentTokens:Ljava/util/List;

    iget-object v11, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->annotationDescriptions:Ljava/util/List;

    iget-object v12, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v13, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->loadedTypeInitializer:Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    iget-object v14, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v15, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 p1, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->enclosingType:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->declaredTypes:Ljava/util/List;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->permittedSubclasses:Ljava/util/List;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->anonymousClass:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->localClass:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->record:Z

    move/from16 v21, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestHost:Lnet/bytebuddy/description/type/TypeDescription;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->nestMembers:Ljava/util/List;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v23}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v24
.end method
