.class public final synthetic Lr4/tm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:Lr4/an1;

.field public final b:Lr4/cs0;

.field public final d:Lr4/um0;


# direct methods
.method public constructor <init>(Lr4/an1;Lr4/cs0;Lr4/um0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tm1;->a:Lr4/an1;

    iput-object p2, p0, Lr4/tm1;->b:Lr4/cs0;

    iput-object p3, p0, Lr4/tm1;->d:Lr4/um0;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 3

    iget-object v0, p0, Lr4/tm1;->a:Lr4/an1;

    iget-object v1, p0, Lr4/tm1;->b:Lr4/cs0;

    iget-object v2, p0, Lr4/tm1;->d:Lr4/um0;

    invoke-virtual {v0, v1, v2, p1}, Lr4/an1;->g(Lr4/cs0;Lr4/um0;Z)V

    return-void
.end method
