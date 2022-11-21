.class public Lcom/esotericsoftware/minlog/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/minlog/Log$Logger;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x5

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x6

.field public static final LEVEL_TRACE:I = 0x1

.field public static final LEVEL_WARN:I = 0x4

.field public static TRACE:Z = false

.field public static WARN:Z = false

.field public static a:I = 0x3

.field public static b:Lcom/esotericsoftware/minlog/Log$Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    new-instance v0, Lcom/esotericsoftware/minlog/Log$Logger;

    invoke-direct {v0}, Lcom/esotericsoftware/minlog/Log$Logger;-><init>()V

    sput-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DEBUG()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static ERROR()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static INFO()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static NONE()V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static TRACE()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static WARN()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->set(I)V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static set(I)V
    .locals 3

    sput p0, Lcom/esotericsoftware/minlog/Log;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-gt p0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/esotericsoftware/minlog/Log;->ERROR:Z

    const/4 v2, 0x4

    if-gt p0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sput-boolean v2, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    const/4 v2, 0x3

    if-gt p0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sput-boolean v2, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    const/4 v2, 0x2

    if-gt p0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    sput-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-gt p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    sput-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    return-void
.end method

.method public static setLogger(Lcom/esotericsoftware/minlog/Log$Logger;)V
    .locals 0

    sput-object p0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/esotericsoftware/minlog/Log;->b:Lcom/esotericsoftware/minlog/Log$Logger;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/esotericsoftware/minlog/Log$Logger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
