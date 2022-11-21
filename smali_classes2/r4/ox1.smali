.class public final synthetic Lr4/ox1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/px1;


# direct methods
.method public constructor <init>(Lr4/px1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ox1;->a:Lr4/px1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/ox1;->a:Lr4/px1;

    invoke-virtual {v0}, Lr4/jx1;->a()V

    return-void
.end method
