.class Lcom/prineside/luaj/compiler/LexState$Vardesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vardesc"
.end annotation


# instance fields
.field public final a:S


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short p1, p1

    iput-short p1, p0, Lcom/prineside/luaj/compiler/LexState$Vardesc;->a:S

    return-void
.end method
