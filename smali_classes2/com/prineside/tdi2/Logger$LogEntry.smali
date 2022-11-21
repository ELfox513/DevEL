.class public Lcom/prineside/tdi2/Logger$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation


# instance fields
.field public a:Z

.field public final date:Ljava/util/Date;

.field public entryType:Lcom/prineside/tdi2/Logger$EntryType;

.field public message:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Logger$LogEntry;->date:Ljava/util/Date;

    sget-object v1, Lcom/prineside/tdi2/Logger$EntryType;->DEBUG:Lcom/prineside/tdi2/Logger$EntryType;

    iput-object v1, p0, Lcom/prineside/tdi2/Logger$LogEntry;->entryType:Lcom/prineside/tdi2/Logger$EntryType;

    const-string v1, ""

    iput-object v1, p0, Lcom/prineside/tdi2/Logger$LogEntry;->tag:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/Logger$LogEntry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/Logger$LogEntry;->a:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/Logger$LogEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/Logger$LogEntry;->a:Z

    return p1
.end method
