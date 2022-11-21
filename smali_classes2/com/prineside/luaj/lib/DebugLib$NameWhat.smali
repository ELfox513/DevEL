.class Lcom/prineside/luaj/lib/DebugLib$NameWhat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameWhat"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->b:Ljava/lang/String;

    return-void
.end method
