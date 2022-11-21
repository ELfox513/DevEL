.class public Lnet/bytebuddy/implementation/Implementation$Context$Default;
.super Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetter;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethod;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;
    }
.end annotation


# static fields
.field public static final ACCESSOR_METHOD_SUFFIX:Ljava/lang/String; = "accessor"

.field public static final FIELD_CACHE_PREFIX:Ljava/lang/String; = "cachedValue"


# instance fields
.field private final auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field private final auxiliaryTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field private fieldCacheCanAppendEntries:Z

.field private final registeredAccessorMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredFieldCacheEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredFieldCacheFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredGetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredSetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;)V

    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iput-object p4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iput-object p5, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iput-object p6, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheFields:Ljava/util/Set;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    return-void
.end method


# virtual methods
.method public cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 6

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-boolean v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    new-instance v1, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    invoke-direct {v1, v2, v3, v4, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheFields:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    move p1, v5

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cached values cannot be registered after defining the type initializer for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/NamedElement$WithDescriptor;->getGenericSignature()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/description/field/FieldDescription;->NO_DEFAULT_VALUE:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v3, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->storeIn(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, v0, p0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    invoke-interface {v0, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public getAuxiliaryTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/DynamicType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;->name(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-interface {p1, v0, v1, p0}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v0

    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public registerGetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v0

    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public registerSetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v0

    :goto_0
    iget-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method
