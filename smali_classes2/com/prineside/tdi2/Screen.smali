.class public abstract Lcom/prineside/tdi2/Screen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Screen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public abstract draw(F)V
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public render(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Screen;->draw(F)V

    return-void
.end method

.method public resize(II)V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 0

    return-void
.end method
