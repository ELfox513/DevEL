.class public Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;
.super Lnet/bytebuddy/utility/FileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForNio2CapableVm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;,
        Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;,
        Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

.field private static final FILES:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

.field private static final STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/FileSystem;->a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

    const-class v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/FileSystem;->a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->FILES:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

    const-class v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/utility/FileSystem;->a(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;

    sput-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/utility/FileSystem;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    sget-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;->toArray(I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "REPLACE_EXISTING"

    invoke-interface {v0, v2}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->FILES:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

    sget-object v2, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

    invoke-interface {v2, p1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p2}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2, v1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;->copy(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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

    move-result-object p1

    if-eq v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public move(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    sget-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->STANDARD_COPY_OPTION:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;->toArray(I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "REPLACE_EXISTING"

    invoke-interface {v0, v2}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$StandardCopyOption;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v0, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->FILES:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;

    sget-object v2, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm;->DISPATCHER:Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;

    invoke-interface {v2, p1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p2}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Dispatcher;->toPath(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2, v1}, Lnet/bytebuddy/utility/FileSystem$ForNio2CapableVm$Files;->move(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
