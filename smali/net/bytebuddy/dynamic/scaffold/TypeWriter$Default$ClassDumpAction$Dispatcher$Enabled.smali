.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final folder:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->folder:Ljava/lang/String;

    iput-wide p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->timestamp:J

    return-void
.end method


# virtual methods
.method public dump(Lnet/bytebuddy/description/type/TypeDescription;Z[B)V
    .locals 8

    :try_start_0
    new-instance v7, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->folder:Ljava/lang/String;

    iget-wide v4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->timestamp:J

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;ZJ[B)V

    invoke-static {v7}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default;->a(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    iget-wide v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->timestamp:J

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;

    iget-wide v4, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->timestamp:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->folder:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->folder:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->folder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ClassDumpAction$Dispatcher$Enabled;->timestamp:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
