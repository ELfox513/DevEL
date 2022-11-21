.class public final synthetic Lr4/zy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/cz0;


# direct methods
.method public constructor <init>(Lr4/cz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zy0;->a:Lr4/cz0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/zy0;->a:Lr4/cz0;

    invoke-virtual {v0}, Lr4/cz0;->B()V

    return-void
.end method
