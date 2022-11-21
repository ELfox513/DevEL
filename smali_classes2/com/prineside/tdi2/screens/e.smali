.class public final synthetic Lcom/prineside/tdi2/screens/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/AccountScreen$22;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/screens/e;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    iput p2, p0, Lcom/prineside/tdi2/screens/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/e;->a:Lcom/prineside/tdi2/screens/AccountScreen$22;

    iget v1, p0, Lcom/prineside/tdi2/screens/e;->b:I

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/AccountScreen$22;->e(Lcom/prineside/tdi2/screens/AccountScreen$22;I)V

    return-void
.end method
