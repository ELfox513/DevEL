.class public final synthetic Lcom/prineside/tdi2/screens/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/MoneyScreen;

.field public final synthetic b:Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/e0;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/e0;->b:Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/e0;->a:Lcom/prineside/tdi2/screens/MoneyScreen;

    iget-object v1, p0, Lcom/prineside/tdi2/screens/e0;->b:Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/MoneyScreen;->b(Lcom/prineside/tdi2/screens/MoneyScreen;Lcom/prineside/tdi2/screens/MoneyScreen$PaperPackConfig;)V

    return-void
.end method
