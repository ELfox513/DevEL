.class Lcom/prineside/tdi2/screens/AccountScreen$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/AccountScreen;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/AccountScreen$7;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$7;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    sget-object v1, Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;->PASSWORD_RESET:Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/AccountScreen;->c(Lcom/prineside/tdi2/screens/AccountScreen;Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;)Lcom/prineside/tdi2/screens/AccountScreen$ScreenType;

    iget-object v0, p0, Lcom/prineside/tdi2/screens/AccountScreen$7;->a:Lcom/prineside/tdi2/screens/AccountScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen;->d(Lcom/prineside/tdi2/screens/AccountScreen;)V

    return-void
.end method
