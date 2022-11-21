.class public final synthetic Lr4/zt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/hu3;


# direct methods
.method public constructor <init>(Lr4/hu3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zt3;->a:Lr4/hu3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/zt3;->a:Lr4/hu3;

    invoke-virtual {v0}, Lr4/hu3;->x()V

    return-void
.end method
