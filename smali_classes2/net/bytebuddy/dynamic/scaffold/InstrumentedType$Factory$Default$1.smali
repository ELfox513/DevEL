.class final enum Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default$1;
.super Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/InstrumentedType$1;)V

    return-void
.end method


# virtual methods
.method public represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;
    .locals 25

    new-instance v23, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/TypeVariableSource;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForDetachment;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    move-result-object v5

    invoke-interface {v0, v5}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    invoke-interface {v0, v6}, Lnet/bytebuddy/description/field/FieldList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v8

    invoke-interface {v0, v8}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v9

    invoke-interface {v0, v9}, Lnet/bytebuddy/description/type/RecordComponentList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v10

    sget-object v11, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$None;

    sget-object v12, Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/LoadedTypeInitializer$NoOp;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeList;->UNDEFINED:Lnet/bytebuddy/description/type/TypeList;

    :goto_0
    move-object/from16 v17, v0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v18

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v19

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isRecord()Z

    move-result v20

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/bytebuddy/dynamic/TargetType;->DESCRIPTION:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_1
    move-object/from16 v21, v0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->isNestHost()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v22

    move-object/from16 v24, v15

    invoke-static/range {v22 .. v22}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v15

    invoke-interface {v0, v15}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object/from16 v24, v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object/from16 v22, v0

    move-object/from16 v0, v23

    move-object/from16 v15, v24

    invoke-direct/range {v0 .. v22}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/LoadedTypeInitializer;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;Ljava/util/List;ZZZLnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v23
.end method
