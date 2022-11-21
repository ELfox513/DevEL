.class public final Lr4/w63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/j33;

.field public final synthetic b:Lr4/x63;


# direct methods
.method public constructor <init>(Lr4/x63;Lr4/j33;)V
    .locals 0

    iput-object p1, p0, Lr4/w63;->b:Lr4/x63;

    iput-object p2, p0, Lr4/w63;->a:Lr4/j33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/w63;->b:Lr4/x63;

    iget-object v1, p0, Lr4/w63;->a:Lr4/j33;

    invoke-static {v0, v1}, Lr4/x63;->V(Lr4/x63;Lr4/j33;)V

    return-void
.end method
