.class public final Lr4/yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vi;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr4/aj;


# direct methods
.method public constructor <init>(Lr4/aj;I)V
    .locals 0

    iput-object p1, p0, Lr4/yi;->b:Lr4/aj;

    iput p2, p0, Lr4/yi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lr4/td;Ljava/lang/Object;)V
    .locals 2

    iget-object p2, p0, Lr4/yi;->b:Lr4/aj;

    iget v0, p0, Lr4/yi;->a:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lr4/aj;->f(Lr4/aj;ILr4/td;Ljava/lang/Object;)V

    return-void
.end method
