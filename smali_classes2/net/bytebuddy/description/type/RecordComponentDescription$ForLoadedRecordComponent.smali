.class public Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;
.super Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/RecordComponentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedRecordComponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;


# instance fields
.field private final recordComponent:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.security.AccessController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v1, "net.bytebuddy.securitymanager"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    sput-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

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

    sget-boolean v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/description/type/RecordComponentDescription;
    .locals 3

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;

    check-cast p0, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a record component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    sget-object v1, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v2, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getAccessor(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic getAccessor()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->getAccessor()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getActualName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getDeclaringRecord(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 2
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->RECORD_COMPONENT:Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent$RecordComponent;->getGenericSignature(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;

    iget-object v1, p0, Lnet/bytebuddy/description/type/RecordComponentDescription$ForLoadedRecordComponent;->recordComponent:Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$OfRecordComponent;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
