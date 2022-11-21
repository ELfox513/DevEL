.class public final enum Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ByteBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordConstructorStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy$Appender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
        "Lnet/bytebuddy/implementation/Implementation;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

.field public static final enum INSTANCE:Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;->INSTANCE:Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;->$VALUES:[Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;
    .locals 1

    const-class v0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;
    .locals 1

    sget-object v0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;->$VALUES:[Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    new-instance v0, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy$Appender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    return-object v0
.end method

.method public extractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    new-instance v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v0}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    sget-object v4, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->targetsElement(Ljava/lang/annotation/ElementType;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    invoke-interface {v0}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v9, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-string v1, "<init>"

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public inject(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 3

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/RecordComponentList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesGenericArguments(Ljava/util/List;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-interface {v1, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    new-instance p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;

    invoke-direct {p1, p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;-><init>(Lnet/bytebuddy/implementation/Implementation;)V

    sget-object v1, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->EXCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    invoke-static {}, Lnet/bytebuddy/dynamic/Transformer$NoOp;->make()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v2

    invoke-interface {p2, v0, p1, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 13

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;

    new-instance v2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12

    invoke-interface {v1}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v6

    sget-object v7, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    invoke-static {v7}, Lnet/bytebuddy/matcher/ElementMatchers;->targetsElement(Ljava/lang/annotation/ElementType;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withField(Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    new-instance v12, Lnet/bytebuddy/description/method/MethodDescription$Token;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement;->getActualName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1}, Lnet/bytebuddy/description/type/RecordComponentDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v1

    sget-object v2, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->targetsElement(Ljava/lang/annotation/ElementType;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v9

    sget-object v10, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v11, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {p1, v12}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
