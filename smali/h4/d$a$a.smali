.class public final Lh4/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final o:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Z

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lh4/d$a$a;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh4/d$a$a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh4/d$a$a;->b:Z

    const/16 v1, 0x11

    iput v1, p0, Lh4/d$a$a;->c:I

    iput-boolean v0, p0, Lh4/d$a$a;->d:Z

    const/16 v1, 0x1110

    iput v1, p0, Lh4/d$a$a;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lh4/d$a$a;->f:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lh4/d$a$a;->g:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lh4/d$a$a;->h:Z

    iput-boolean v0, p0, Lh4/d$a$a;->i:Z

    iput-object v1, p0, Lh4/d$a$a;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v1, p0, Lh4/d$a$a;->k:Ljava/lang/String;

    iput v0, p0, Lh4/d$a$a;->l:I

    const/16 v1, 0x8

    iput v1, p0, Lh4/d$a$a;->m:I

    iput v0, p0, Lh4/d$a$a;->n:I

    return-void
.end method

.method public constructor <init>(Lh4/d$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh4/d$a$a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lh4/d$a$a;->b:Z

    const/16 v1, 0x11

    iput v1, p0, Lh4/d$a$a;->c:I

    iput-boolean v0, p0, Lh4/d$a$a;->d:Z

    const/16 v1, 0x1110

    iput v1, p0, Lh4/d$a$a;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lh4/d$a$a;->f:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lh4/d$a$a;->g:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lh4/d$a$a;->h:Z

    iput-boolean v0, p0, Lh4/d$a$a;->i:Z

    iput-object v1, p0, Lh4/d$a$a;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v1, p0, Lh4/d$a$a;->k:Ljava/lang/String;

    iput v0, p0, Lh4/d$a$a;->l:I

    const/16 v1, 0x8

    iput v1, p0, Lh4/d$a$a;->m:I

    iput v0, p0, Lh4/d$a$a;->n:I

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lh4/d$a;->a:Z

    iput-boolean v0, p0, Lh4/d$a$a;->a:Z

    iget-boolean v0, p1, Lh4/d$a;->b:Z

    iput-boolean v0, p0, Lh4/d$a$a;->b:Z

    iget v0, p1, Lh4/d$a;->d:I

    iput v0, p0, Lh4/d$a$a;->c:I

    iget-boolean v0, p1, Lh4/d$a;->k:Z

    iput-boolean v0, p0, Lh4/d$a$a;->d:Z

    iget v0, p1, Lh4/d$a;->p:I

    iput v0, p0, Lh4/d$a$a;->e:I

    iget-object v0, p1, Lh4/d$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lh4/d$a$a;->f:Ljava/lang/String;

    iget-object v0, p1, Lh4/d$a;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Lh4/d$a$a;->g:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lh4/d$a;->s:Z

    iput-boolean v0, p0, Lh4/d$a$a;->h:Z

    iget-boolean v0, p1, Lh4/d$a;->t:Z

    iput-boolean v0, p0, Lh4/d$a$a;->i:Z

    iget-object v0, p1, Lh4/d$a;->u:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lh4/d$a$a;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v0, p1, Lh4/d$a;->v:Ljava/lang/String;

    iput-object v0, p0, Lh4/d$a$a;->k:Ljava/lang/String;

    invoke-static {p1}, Lh4/d$a;->b(Lh4/d$a;)I

    move-result v0

    iput v0, p0, Lh4/d$a$a;->l:I

    iget v0, p1, Lh4/d$a;->x:I

    iput v0, p0, Lh4/d$a$a;->m:I

    iget p1, p1, Lh4/d$a;->y:I

    iput p1, p0, Lh4/d$a$a;->n:I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lh4/d$a;Lh4/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lh4/d$a$a;-><init>(Lh4/d$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lh4/q;)V
    .locals 0

    invoke-direct {p0}, Lh4/d$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh4/d$a;
    .locals 18
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v17, Lh4/d$a;

    iget-boolean v2, v0, Lh4/d$a$a;->a:Z

    iget-boolean v3, v0, Lh4/d$a$a;->b:Z

    iget v4, v0, Lh4/d$a$a;->c:I

    iget-boolean v5, v0, Lh4/d$a$a;->d:Z

    iget v6, v0, Lh4/d$a$a;->e:I

    iget-object v7, v0, Lh4/d$a$a;->f:Ljava/lang/String;

    iget-object v8, v0, Lh4/d$a$a;->g:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lh4/d$a$a;->h:Z

    iget-boolean v10, v0, Lh4/d$a$a;->i:Z

    iget-object v11, v0, Lh4/d$a$a;->j:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v12, v0, Lh4/d$a$a;->k:Ljava/lang/String;

    iget v13, v0, Lh4/d$a$a;->l:I

    iget v14, v0, Lh4/d$a$a;->m:I

    iget v15, v0, Lh4/d$a$a;->n:I

    const/16 v16, 0x0

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lh4/d$a;-><init>(ZZIZILjava/lang/String;Ljava/util/ArrayList;ZZLcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;IIILh4/q;)V

    return-object v17
.end method

.method public final b(I)Lh4/d$a$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput p1, p0, Lh4/d$a$a;->e:I

    return-object p0
.end method
