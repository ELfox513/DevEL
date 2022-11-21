.class public final Lr4/nw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/sw2;


# direct methods
.method public constructor <init>(Lr4/sw2;)V
    .locals 0

    iput-object p1, p0, Lr4/nw2;->a:Lr4/sw2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/nw2;->a:Lr4/sw2;

    invoke-static {v0}, Lr4/sw2;->c(Lr4/sw2;)Lr4/mw2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/mw2;->c()V

    return-void
.end method
