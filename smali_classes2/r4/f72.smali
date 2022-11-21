.class public final synthetic Lr4/f72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qs2;


# instance fields
.field public final a:Lr4/h72;

.field public final b:Lr4/i00;


# direct methods
.method public constructor <init>(Lr4/h72;Lr4/i00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f72;->a:Lr4/h72;

    iput-object p2, p0, Lr4/f72;->b:Lr4/i00;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lr4/f72;->a:Lr4/h72;

    iget-object v1, p0, Lr4/f72;->b:Lr4/i00;

    invoke-virtual {v0, v1}, Lr4/h72;->c(Lr4/i00;)V

    return-void
.end method
