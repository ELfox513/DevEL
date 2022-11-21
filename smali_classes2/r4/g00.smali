.class public final synthetic Lr4/g00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/bb;


# instance fields
.field public final a:Lr4/c41;

.field public final b:Lr4/a7;


# direct methods
.method public constructor <init>(Lr4/c41;Lr4/a7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/g00;->a:Lr4/c41;

    iput-object p2, p0, Lr4/g00;->b:Lr4/a7;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lr4/va;)V
    .locals 2

    iget-object v0, p0, Lr4/g00;->a:Lr4/c41;

    iget-object v1, p0, Lr4/g00;->b:Lr4/a7;

    check-cast p1, Lr4/f61;

    invoke-virtual {v0, v1, p1, p2}, Lr4/c41;->J(Lr4/a7;Lr4/f61;Lr4/va;)V

    return-void
.end method
