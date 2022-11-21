.class public final Lcom/prineside/luaj/LoadState$GlobalsUndumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/Globals$Undumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalsUndumper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public undump(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LoadState;->undump(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    return-object p1
.end method
