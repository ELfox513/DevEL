.class Lcom/android/dx/command/dexer/Main$RemoveModuleInfoFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveModuleInfoFilter"
.end annotation


# instance fields
.field public final delegate:Lp1/d$e;


# direct methods
.method public constructor <init>(Lp1/d$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$RemoveModuleInfoFilter;->delegate:Lp1/d$e;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$RemoveModuleInfoFilter;->delegate:Lp1/d$e;

    invoke-interface {v0, p1}, Lp1/d$e;->accept(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "module-info.class"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
