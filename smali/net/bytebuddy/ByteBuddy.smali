.class public Lnet/bytebuddy/ByteBuddy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;,
        Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;,
        Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final BYTE_BUDDY_DEFAULT_CONTEXT_NAME:Ljava/lang/String; = "synthetic"

.field private static final BYTE_BUDDY_DEFAULT_PREFIX:Ljava/lang/String; = "ByteBuddy"

.field private static final BYTE_BUDDY_DEFAULT_SUFFIX:Ljava/lang/String; = "auxiliary"

.field private static final DEFAULT_AUXILIARY_NAMING_STRATEGY:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private static final DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY:Lnet/bytebuddy/implementation/Implementation$Context$Factory;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field public static final DEFAULT_NAMING_PROPERTY:Ljava/lang/String; = "net.bytebuddy.naming"

.field private static final DEFAULT_NAMING_STRATEGY:Lnet/bytebuddy/NamingStrategy;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# instance fields
.field public final annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

.field public final annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

.field public final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field public final classFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field public final classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

.field public final ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

.field public final instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

.field public final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field public final namingStrategy:Lnet/bytebuddy/NamingStrategy;

.field public final typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

.field public final visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    invoke-static {v2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/ByteBuddy;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/ByteBuddy;->ACCESS_CONTROLLER:Z

    :goto_0
    new-instance v0, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v2, "net.bytebuddy.naming"

    invoke-direct {v0, v2}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/ByteBuddy;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "synthetic"

    const-string v3, "auxiliary"

    const-string v4, "net.bytebuddy.renamed"

    const-string v5, "ByteBuddy"

    if-nez v0, :cond_1

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/utility/GraalImageCode;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lnet/bytebuddy/NamingStrategy$Suffixing;

    new-instance v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix;

    sget-object v6, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {v0, v6}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix;-><init>(Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V

    invoke-direct {v1, v5, v0, v4}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;

    invoke-direct {v0, v3}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;

    invoke-direct {v3, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v0, v1

    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lnet/bytebuddy/NamingStrategy$Suffixing;

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {v1, v5, v0, v4}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;

    invoke-direct {v0, v3}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;

    invoke-direct {v3, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "caller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnet/bytebuddy/NamingStrategy$Suffixing;

    new-instance v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix;

    sget-object v6, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {v0, v6}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$WithCallerSuffix;-><init>(Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V

    invoke-direct {v1, v5, v0, v4}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;

    invoke-direct {v0, v3}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;-><init>(Ljava/lang/String;)V

    new-instance v3, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;

    invoke-direct {v3, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    new-instance v6, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    sget-object v7, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    new-instance v8, Lnet/bytebuddy/utility/RandomString;

    const/16 v9, 0x8

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v8, v9, v10}, Lnet/bytebuddy/utility/RandomString;-><init>(ILjava/util/Random;)V

    invoke-direct {v6, v5, v7, v4, v8}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;Lnet/bytebuddy/utility/RandomString;)V

    new-instance v1, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;

    invoke-direct {v1, v3}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$Suffixing;-><init>(Ljava/lang/String;)V

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;

    invoke-direct {v0, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory$WithFixedSuffix;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    sput-object v1, Lnet/bytebuddy/ByteBuddy;->DEFAULT_NAMING_STRATEGY:Lnet/bytebuddy/NamingStrategy;

    sput-object v0, Lnet/bytebuddy/ByteBuddy;->DEFAULT_AUXILIARY_NAMING_STRATEGY:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    sput-object v3, Lnet/bytebuddy/ByteBuddy;->DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    return-void

    :catch_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'net.bytebuddy.naming\' is set to an unknown, non-numeric value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ClassFileVersion;)V
    .locals 15

    sget-object v0, Lnet/bytebuddy/ByteBuddy;->DEFAULT_NAMING_STRATEGY:Lnet/bytebuddy/NamingStrategy;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;

    const-string v1, "ByteBuddy"

    invoke-direct {v0, v1}, Lnet/bytebuddy/NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    :cond_0
    move-object v4, v0

    sget-object v0, Lnet/bytebuddy/ByteBuddy;->DEFAULT_AUXILIARY_NAMING_STRATEGY:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    if-nez v0, :cond_1

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;

    const-string v1, "auxiliary"

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy$SuffixingRandom;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v5, v0

    sget-object v6, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    sget-object v7, Lnet/bytebuddy/implementation/attribute/AnnotationRetention;->ENABLED:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    sget-object v0, Lnet/bytebuddy/ByteBuddy;->DEFAULT_IMPLEMENTATION_CONTEXT_FACTORY:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    if-nez v0, :cond_2

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;

    :cond_2
    move-object v8, v0

    sget-object v9, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;->DEFAULT:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    sget-object v10, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;->MODIFIABLE:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory$Default;

    sget-object v11, Lnet/bytebuddy/dynamic/scaffold/TypeValidation;->ENABLED:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    sget-object v12, Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;->ALWAYS:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy$Default;

    sget-object v13, Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;->CONSTANT_POOL_RETAINING:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy$Default;

    new-instance v14, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isSynthetic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isDefaultFinalizer()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-direct {v14, v0}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ClassFileVersion;",
            "Lnet/bytebuddy/NamingStrategy;",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;",
            "Lnet/bytebuddy/implementation/attribute/AnnotationRetention;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            "Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;",
            "Lnet/bytebuddy/dynamic/scaffold/TypeValidation;",
            "Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;",
            "Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iput-object p2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iput-object p3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iput-object p4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iput-object p5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iput-object p6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iput-object p7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-object p8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iput-object p9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iput-object p10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iput-object p11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iput-object p12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    return-void
.end method

.method private static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/ByteBuddy;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decorate(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->decorate(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->decorate(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v1, v0

    move-object v2, p1

    move-object v12, p2

    invoke-direct/range {v1 .. v12}, Lnet/bytebuddy/dynamic/scaffold/inline/DecoratingDynamicTypeBuilder;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot decorate array or primitive type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    check-cast p1, Lnet/bytebuddy/ByteBuddy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v3, p1, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object p1, p1, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;

    move-result-object p1

    return-object p1
.end method

.method public ignore(Lnet/bytebuddy/matcher/LatentMatcher;)Lnet/bytebuddy/ByteBuddy;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/ByteBuddy;"
        }
    .end annotation

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object v0, v13

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public makeAnnotation()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    new-instance v13, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->ANNOTATION:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v1, v2}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v4, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v3

    sget-object v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v0, v1, v3, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v3, v6, [Lnet/bytebuddy/description/type/TypeDefinition;

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v12, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v13
.end method

.method public makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    const-class v2, Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/lang/Enum;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->parameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Builder;->build()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface {v8, v3}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v20, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v20, v9, v6

    sget-object v10, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v10, v9, v4

    sget-object v10, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v15, 0x2

    aput-object v10, v9, v15

    invoke-static {v9}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v9

    invoke-virtual {v9}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve()I

    move-result v9

    invoke-interface {v7, v8, v9, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v8

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object/from16 v21, v3

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v19, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object/from16 v16, v7

    move-object v7, v5

    const/4 v0, 0x2

    move-object/from16 v15, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    invoke-direct/range {v7 .. v19}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    const/4 v3, 0x1

    new-array v4, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    sget-object v6, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v5, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;->defineConstructor([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/reflect/Type;

    aput-object v2, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v4

    new-array v5, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    aput-object v20, v5, v7

    sget-object v6, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    aput-object v6, v5, v3

    const-string v8, "valueOf"

    invoke-interface {v4, v8, v1, v5}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/reflect/Type;

    aput-object v2, v4, v7

    invoke-interface {v1, v4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;->withParameters([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ExceptionDefinition;

    move-result-object v1

    invoke-interface/range {v21 .. v21}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v4

    invoke-static {v8}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v5

    new-array v8, v0, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v2, v8, v3

    invoke-static {v8}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v5, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v4, v2}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-static {v2}, Lnet/bytebuddy/implementation/MethodCall;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/MethodCall;->withOwnType()Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v2

    new-array v4, v3, [I

    aput v7, v4, v7

    invoke-virtual {v2, v4}, Lnet/bytebuddy/implementation/MethodCall;->withArgument([I)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object v2

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->DYNAMIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v4, v5}, Lnet/bytebuddy/implementation/MethodCall;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    const-class v2, [Lnet/bytebuddy/dynamic/TargetType;

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;

    aput-object v20, v0, v7

    aput-object v6, v0, v3

    const-string v3, "values"

    invoke-interface {v1, v3, v2, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineMethod(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Initial;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lnet/bytebuddy/ByteBuddy$EnumerationImplementation;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Require at least one enumeration constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs makeEnumeration([Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeEnumeration(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public makeInterface(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    sget-object v1, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/ByteBuddy;->subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->implement(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition$Optional;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->modifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs makeInterface([Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->makeInterface(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public makePackage(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v13, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v0, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "package-info"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/16 v2, 0x1600

    invoke-interface {v0, p1, v2, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v12, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->NO_CONSTRUCTORS:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v13
.end method

.method public makeRecord()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->RECORD:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const/4 v3, 0x1

    new-array v4, v3, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v5, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Default;->of(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription$Generic;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v1

    new-instance v4, Lnet/bytebuddy/description/method/MethodDescription$Token;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(I)V

    invoke-interface {v1, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v1

    new-instance v4, Lnet/bytebuddy/description/method/MethodDescription$Token;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    const-string v6, "hashCode"

    const/16 v7, 0x401

    invoke-direct {v4, v6, v7, v5}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {v1, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v1

    new-instance v4, Lnet/bytebuddy/description/method/MethodDescription$Token;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "equals"

    invoke-direct {v4, v6, v7, v5, v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    invoke-interface {v1, v4}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$Token;

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    const-string v5, "toString"

    invoke-direct {v2, v5, v7, v4}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface {v5, v1}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-interface {v4, v5, v6, v1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    invoke-interface {v1, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withRecord(Z)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v5

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v15, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    sget-object v16, Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;->INSTANCE:Lnet/bytebuddy/ByteBuddy$RecordConstructorStrategy;

    move-object v4, v2

    invoke-direct/range {v4 .. v16}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->HASH_CODE:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->EQUALS:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->method(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;->TO_STRING:Lnet/bytebuddy/ByteBuddy$RecordObjectMethod;

    invoke-interface {v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ImplementationDefinition;->intercept(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ReceiverTypeDefinition;

    move-result-object v1

    return-object v1
.end method

.method public rebase(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Ljava/lang/Package;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/PackageDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForPackageDescription;-><init>(Lnet/bytebuddy/description/type/PackageDescription;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer$Suffixing;->withRandomSuffix()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/ByteBuddy;->rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public rebase(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v16, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-interface {v1, v13}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v1, v16

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v1 .. v15}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;)V

    return-object v16

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot rebase array or primitive type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public redefine(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public redefine(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v15, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    invoke-interface {v1, v13}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->represent(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v4, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v1, v15

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lnet/bytebuddy/dynamic/scaffold/inline/RedefinitionDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v15

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot redefine array or primitive type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public subclass(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/Class;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;->IMITATE_SUPER_CLASS_OPENING:Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/ByteBuddy;->subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public subclass(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/ModifierReviewable;->isFinal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/ModifierReviewable$ForTypeDefinition;->isInterface()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    new-array v6, v4, [Lnet/bytebuddy/description/type/TypeDefinition;

    aput-object v1, v6, v3

    invoke-direct {v5, v6}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>([Lnet/bytebuddy/description/type/TypeDefinition;)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    new-instance v5, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v5}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    :goto_0
    new-instance v19, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;

    iget-object v6, v0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v7, v0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v8

    invoke-interface {v7, v8}, Lnet/bytebuddy/NamingStrategy;->subclass(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    sget-object v9, Lnet/bytebuddy/description/modifier/Visibility;->PUBLIC:Lnet/bytebuddy/description/modifier/Visibility;

    aput-object v9, v8, v3

    sget-object v3, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v3, v8, v4

    invoke-static {v8}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lnet/bytebuddy/description/ModifierReviewable;->getModifiers()I

    move-result v1

    invoke-virtual {v3, v1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v1

    invoke-interface {v6, v7, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;->subclass(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v1

    invoke-interface {v1, v5}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withInterfaces(Lnet/bytebuddy/description/type/TypeList$Generic;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v7

    iget-object v8, v0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v9, v0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v10, v0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v11, v0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v12, v0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v13, v0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v14, v0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v15, v0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v1, v0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v2, v0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v6, v19

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, p2

    invoke-direct/range {v6 .. v18}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassDynamicTypeBuilder;-><init>(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy;)V

    return-object v19

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot subclass primitive, array or final types: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public with(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v10, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v11, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v8, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v7, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/TypeValidation;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/Implementation$Context$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v6, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationRetention;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v3, p0, Lnet/bytebuddy/ByteBuddy;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v4, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method

.method public with(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;)Lnet/bytebuddy/ByteBuddy;
    .locals 14

    new-instance v13, Lnet/bytebuddy/ByteBuddy;

    iget-object v1, p0, Lnet/bytebuddy/ByteBuddy;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v2, p0, Lnet/bytebuddy/ByteBuddy;->namingStrategy:Lnet/bytebuddy/NamingStrategy;

    iget-object v4, p0, Lnet/bytebuddy/ByteBuddy;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v5, p0, Lnet/bytebuddy/ByteBuddy;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v6, p0, Lnet/bytebuddy/ByteBuddy;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v7, p0, Lnet/bytebuddy/ByteBuddy;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v8, p0, Lnet/bytebuddy/ByteBuddy;->instrumentedTypeFactory:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;

    iget-object v9, p0, Lnet/bytebuddy/ByteBuddy;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v10, p0, Lnet/bytebuddy/ByteBuddy;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v11, p0, Lnet/bytebuddy/ByteBuddy;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    iget-object v12, p0, Lnet/bytebuddy/ByteBuddy;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object v0, v13

    move-object v3, p1

    invoke-direct/range {v0 .. v12}, Lnet/bytebuddy/ByteBuddy;-><init>(Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/NamingStrategy;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Factory;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;)V

    return-object v13
.end method
