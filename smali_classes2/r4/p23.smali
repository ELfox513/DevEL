.class public final Lr4/p23;
.super Lr4/r23;
.source "SourceFile"


# instance fields
.field public final synthetic p:Lr4/w23;


# direct methods
.method public constructor <init>(Lr4/w23;)V
    .locals 1

    iput-object p1, p0, Lr4/p23;->p:Lr4/w23;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr4/r23;-><init>(Lr4/w23;Lr4/u23;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/p23;->p:Lr4/w23;

    invoke-static {v0, p1}, Lr4/w23;->w(Lr4/w23;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
