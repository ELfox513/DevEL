.class public final synthetic Lcom/prineside/tdi2/screens/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/screens/g;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/screens/g;->a:I

    invoke-static {v0}, Lcom/prineside/tdi2/screens/AccountScreen$22;->c(I)V

    return-void
.end method
