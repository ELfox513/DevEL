.class public Lnet/bytebuddy/build/AccessControllerPlugin;
.super Lnet/bytebuddy/build/Plugin$ForElementMatcher;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;,
        Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper;,
        Lnet/bytebuddy/build/AccessControllerPlugin$Initializer;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Ljava/lang/String; = "java.security.AccessController"

.field private static final EMPTY:[Ljava/lang/Object;

.field private static final NAME:Ljava/lang/String; = "ACCESS_CONTROLLER"

.field private static final SIGNATURES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            "Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final property:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lnet/bytebuddy/build/AccessControllerPlugin;->EMPTY:[Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lnet/bytebuddy/build/AccessControllerPlugin;->SIGNATURES:Ljava/util/Map;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    const/4 v4, 0x1

    new-array v5, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v6, Ljava/security/PrivilegedAction;

    invoke-static {v6}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "doPrivileged"

    invoke-direct {v2, v6, v3, v5}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v7, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v8, Ljava/security/PrivilegedAction;

    invoke-static {v8}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-direct {v5, v6, v3, v7}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v5, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v7, Ljava/security/PrivilegedAction;

    invoke-static {v7}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    aput-object v7, v5, v0

    const-string v7, "doPrivilegedWithCombiner"

    invoke-direct {v2, v7, v3, v5}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v8, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v9, Ljava/security/PrivilegedAction;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-direct {v5, v7, v3, v8}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    const/4 v5, 0x2

    new-array v8, v5, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v9, Ljava/security/PrivilegedAction;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v0

    aput-object v3, v8, v4

    invoke-direct {v2, v6, v3, v8}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v8, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v5, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v10, Ljava/security/PrivilegedAction;

    invoke-static {v10}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v10

    aput-object v10, v9, v0

    sget-object v10, Lnet/bytebuddy/utility/JavaType;->ACCESS_CONTROL_CONTEXT:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v4

    invoke-direct {v8, v6, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    const/4 v8, 0x3

    new-array v9, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    aput-object v3, v9, v4

    const-class v11, [Ljava/security/Permission;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-direct {v2, v6, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v4

    const-class v12, [Ljava/security/Permission;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-direct {v9, v6, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    aput-object v3, v9, v4

    const-class v11, [Ljava/security/Permission;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-direct {v2, v7, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v4

    const-class v12, [Ljava/security/Permission;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-direct {v9, v7, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    invoke-direct {v2, v6, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-direct {v9, v6, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    invoke-direct {v2, v7, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-direct {v9, v7, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v5, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    aput-object v3, v9, v4

    invoke-direct {v2, v6, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v5, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-direct {v9, v6, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v9, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v11, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v0

    aput-object v3, v9, v4

    const-class v11, [Ljava/security/Permission;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-direct {v2, v6, v3, v9}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v9, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v11, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v12, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v4

    const-class v12, [Ljava/security/Permission;

    invoke-static {v12}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-direct {v9, v6, v3, v11}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v6, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v9, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v6, v0

    aput-object v3, v6, v4

    const-class v9, [Ljava/security/Permission;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-direct {v2, v7, v3, v6}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v6, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v8, v8, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v9, Ljava/security/PrivilegedExceptionAction;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v4

    const-class v9, [Ljava/security/Permission;

    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-direct {v6, v7, v3, v8}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v5, v0, [Lnet/bytebuddy/description/type/TypeDescription;

    const-string v6, "getContext"

    invoke-direct {v2, v6, v3, v5}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v3, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    new-array v7, v0, [Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v3, v6, v5, v7}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    new-array v5, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v6, Ljava/security/Permission;

    invoke-static {v6}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "checkPermission"

    invoke-direct {v2, v6, v3, v5}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    new-instance v5, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    new-array v4, v4, [Lnet/bytebuddy/description/type/TypeDescription;

    const-class v7, Ljava/security/Permission;

    invoke-static {v7}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-direct {v5, v6, v3, v4}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;[Lnet/bytebuddy/description/type/TypeDescription;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/bytebuddy/build/AccessControllerPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/build/Plugin$Factory$UsingReflection$Priority;
        value = 0x7fffffff
    .end annotation

    const-class v0, Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->declaresMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    iput-object p1, p0, Lnet/bytebuddy/build/AccessControllerPlugin;->property:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/AccessControllerPlugin;->EMPTY:[Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/Map;
    .locals 1

    sget-object v0, Lnet/bytebuddy/build/AccessControllerPlugin;->SIGNATURES:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Collision is unlikely and buffer overhead not justified."
        value = {
            "SBSC_USE_STRINGBUFFER_CONCATENATION"
        }
    .end annotation

    const-string p3, "ACCESS_CONTROLLER"

    :goto_0
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-static {p3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/field/FieldList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "$"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;

    sget-object v2, Lnet/bytebuddy/description/modifier/Visibility;->PRIVATE:Lnet/bytebuddy/description/modifier/Visibility;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/description/modifier/Ownership;->STATIC:Lnet/bytebuddy/description/modifier/Ownership;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v5, Lnet/bytebuddy/description/modifier/FieldManifestation;->FINAL:Lnet/bytebuddy/description/modifier/FieldManifestation;

    aput-object v5, v1, v2

    invoke-interface {p1, p3, v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->defineField(Ljava/lang/String;Ljava/lang/reflect/Type;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const-class v1, Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->isAnnotatedWith(Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    new-array v2, v4, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    new-instance v4, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper;

    invoke-direct {v4, p3}, Lnet/bytebuddy/build/AccessControllerPlugin$AccessControlWrapper;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/build/AccessControllerPlugin;->property:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer$WithoutProperty;

    invoke-direct {v0, p2, p3}, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer$WithoutProperty;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer$WithProperty;

    invoke-direct {v1, p2, p3, v0}, Lnet/bytebuddy/build/AccessControllerPlugin$Initializer$WithProperty;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-interface {p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->initializer(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/AccessControllerPlugin;->property:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/build/AccessControllerPlugin;

    iget-object p1, p1, Lnet/bytebuddy/build/AccessControllerPlugin;->property:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/build/Plugin$ForElementMatcher;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/AccessControllerPlugin;->property:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public make()Lnet/bytebuddy/build/Plugin;
    .locals 0

    return-object p0
.end method
