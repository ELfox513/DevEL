.class public final Lr4/ix3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/hx3;


# direct methods
.method public constructor <init>(Lr4/hx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ix3;->a:Lr4/hx3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ix3;->a:Lr4/hx3;

    invoke-interface {v0}, Lr4/hx3;->E()V

    return-void
.end method
