.class public final synthetic Lr4/dt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/ft0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/ft0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dt0;->a:Lr4/ft0;

    iput-object p2, p0, Lr4/dt0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/dt0;->a:Lr4/ft0;

    iget-object v1, p0, Lr4/dt0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lr4/ft0;->a(Ljava/lang/String;)V

    return-void
.end method
