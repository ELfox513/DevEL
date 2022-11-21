.class public final Lr4/mo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/gn;


# instance fields
.field public final synthetic a:Lr4/po;


# direct methods
.method public constructor <init>(Lr4/po;)V
    .locals 0

    iput-object p1, p0, Lr4/mo;->a:Lr4/po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/mo;->a:Lr4/po;

    invoke-static {p1}, Lr4/po;->h(Lr4/po;)V

    return-void

    :cond_0
    iget-object p1, p0, Lr4/mo;->a:Lr4/po;

    invoke-static {p1}, Lr4/po;->j(Lr4/po;)V

    return-void
.end method
