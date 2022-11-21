.class Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/managers/ScreenManager$ScreenManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$3;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenChanged()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney$3;->a:Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;->d(Lcom/prineside/tdi2/ui/shared/ResourcesAndMoney;Z)Z

    return-void
.end method
