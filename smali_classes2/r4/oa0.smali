.class public final synthetic Lr4/oa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/qa0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr4/qa0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oa0;->a:Lr4/qa0;

    iput-object p2, p0, Lr4/oa0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/oa0;->a:Lr4/qa0;

    iget-object v1, p0, Lr4/oa0;->b:Ljava/lang/Object;

    check-cast p1, Lr4/q90;

    invoke-virtual {v0, v1, p1}, Lr4/qa0;->c(Ljava/lang/Object;Lr4/q90;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
