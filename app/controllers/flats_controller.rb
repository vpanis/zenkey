class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  before_action :set_nested_flat, only: [:filter, :dossiers, :reservations, :visits]

  def index
    @flats = policy_scope(Flat.all)
  end

  def new
    @flat = Flat.new
    @metro_stations = ["Abbesses", "Adolphe Chérioux", "Alésia", "Alexandre Dumas", "Alma – Marceau", "Anatole France", "Anvers Sacré-Cœur", "Argentine", "Arts et Métiers", "Asnières – Gennevilliers", "Assemblée nationale", "Aubervilliers – Pantin", "Avenue Émile-Zola", "Avron", "Balard", "Barbès – Rochechouart", "Basilique de Saint-Denis", "Bastille", "Bel-Air", "Belleville", "Bérault", "Bercy", "Bibliothèque François-Mitterrand", "Billancourt", "Bir-Hakeim", "Blanche", "Bobigny – Pablo Picasso", "Bobigny – Pantin", "Boissière", "Bolivar", "Bonne-Nouvelle", "Botzaris", "Boucicaut", "Boulogne – Jean Jaurès", "Boulogne – Pont de Saint-Cloud", "Bourse", "Bréguet – Sabin", "Brochant", "Butte Montmartre", "Buttes Chaumont", "Buzenval", "Cadet", "Cambronne", "Campo-Formio", "Cardinal Lemoine", "Carrefour Pleyel", "Censier – Daubenton", "Champs-Élysées – Clemenceau", "Chardon-Lagache", "Charenton – Écoles", "Charles de Gaulle – Étoile", "Charles Michels", "Charonne", "Château de Vincennes", "Château d’Eau", "Château Rouge", "Château-Landon", "Châtelet", "Châtillon-Montrouge", "Chaussée d’Antin – La Fayette", "Chemin Vert", "Chevaleret", "Cité", "Cluny – La Sorbonne", "Colonel Fabien", "Commerce", "Concorde", "Convention", "Corentin Cariou", "Corentin Celton", "Corvisart", "Cour Saint-Émilion", "Courcelles", "Couronnes", "Courteline", "Créteil – L’Échat", "Créteil – Préfecture", "Créteil – Université", "Crimée", "Croix de Chavaux", "Danube", "Daumesnil", "Denfert-Rochereau", "Dugommier", "Dupleix", "Duroc", "École Militaire", "École vétérinaire de Maisons-Alfort", "Edgar Quinet", "Église d’Auteuil", "Église de Pantin", "Esplanade de La Défense", "Étienne Marcel", "Europe", "Exelmans", "Faidherbe – Chaligny", "Falguière", "Félix Éboué", "Félix Faure", "Filles du Calvaire", "Fort d’Aubervilliers", "Franklin D. Roosevelt", "Gabribaldi", "Gabriel Péri", "Gaïté Ligne", "Gallieni", "Gambetta", "Gare d’Austerlitz", "Gare de l’Est", "Gare de Lyon", "Gare du Nord", "George V", "Glacière", "Goncourt", "Grands Boulevards", "Guy Môquet", "Havre – Caumartin", "Hoche", "Hôtel de Ville", "Iéna", "Invalides", "Jacques Bonsergent", "Jasmin", "Jaurès", "Javel – André Citroën", "Jourdain", "Jules Joffrin", "Jussieu", "Kléber", "La Chapelle", "La Courneuve", "La Défense Grande Arche", "La Fourche", "La Motte-Picquet – Grenelle", "La Muette", "La Tour-Maubourg", "Lamarck – Caulaincourt", "Laumière", "Le Kremlin-Bicêtre", "Le Peletier", "Ledru-Rollin", "Léon Blum", "les Agnettes", "Les Gobelins", "Les Halles", "Les Sablons", "Liberté", "Liège", "Louis Blanc", "Louise Michel", "Lourmel", "Louvre – Rivoli", "Mabillon", "Madeleine", "Mairie de Clichy", "Mairie de Montreuil", "Mairie de Montrouge", "Mairie de Saint-Ouen", "Mairie des Lilas", "Mairie d’Issy", "Mairie d’Ivry", "Maison Blanche", "Maisons-Alfort – Les Juilliottes", "Maisons-Alfort – Stade", "Malakoff – Plateau de Vanves", "Malakoff – Rue Etienne Dolet", "Malesherbes", "Maraîchers", "Marcadet", "Marcel Sembat", "Marx Dormoy", "Maubert – Mutualité", "Ménilmontant", "Michel Bizot", "Michel-Ange – Auteuil", "Michel-Ange – Molitor", "Mirabeau", "Miromesnil", "Monceau", "Montgallet", "Montparnasse – Bienvenüe", "Mouton-Duvernet", "Musée d’Orsay", "Nation", "Nationale", "Notre-Dame-de-Lorette", "Notre-Dame-des-Champs", "Oberkampf", "Odéon", "Olympiades", "Opéra", "Ourcq", "Palais Royal – Musée du Louvre", "Parc de la Villette", "Parmentier", "Passy", "Pasteur", "Pelleport", "Père Lachaise", "Pereire", "Pernety", "Philippe Auguste", "Picpus", "Pierre et Marie Curie", "Pigalle", "Place de Clichy", "Place des Fêtes", "Place d’Italie", "Place Monge", "Plaisance", "Créteil – Pointe du Lac", "Poissonnière", "Pont de Levallois – Bécon", "Pont de Neuilly", "Pont de Sèvres", "Pont Neuf", "Pont-Marie Cité des Arts", "Porte Dauphine", "Porte d’Auteuil", "Porte de Bagnolet", "Porte de Champerret", "Porte de Charenton", "Porte de Choisy", "Porte de Clichy", "Porte de Clignancourt", "Porte de la Chapelle", "Porte de la Villette", "Porte de Montreuil", "Porte de Pantin", "Porte de Saint-Cloud", "Porte de Saint-Ouen", "Porte de Vanves", "Porte de Versailles", "Porte de Vincennes", "Porte des Lilas", "Porte d’Italie", "Porte d’Ivry", "Porte Dorée", "Porte d’Orléans", "Porte Maillot", "Pré Saint-Gervais", "Pyramides", "Pyrénées", "Quai de la Gare", "Quai de la Rapée", "Quatre-Septembre", "Rambuteau", "Ranelagh", "Raspail", "Réaumur – Sébastopol", "Rennes", "République", "Reuilly – Diderot", "Richard-Lenoir", "Richelieu – Drouot", "Riquet", "Robespierre", "Rome", "Rue de la Pompe", "Rue des Boulets", "Rue du Bac", "Rue Saint-Maur", "Saint-Ambroise", "Saint-Augustin", "Saint-Denis – Aubervilliers", "Saint-Denis – Stade de France", "Saint-Denis Université", "Saint-Fargeau", "Saint-François Xavier", "Saint-Georges", "Saint-Germain-des-Prés", "Saint-Jacques", "Saint-Lazare", "Saint-Mandé", "Saint-Marcel", "Saint-Michel", "Saint-Paul", "Saint-Philippe du Roule", "Saint-Placide", "Saint-Sébastien – Froissart", "Saint-Sulpice", "Ségur", "Sentier", "Sèvres – Babylone", "Sèvres – Lecourbe", "Simplon", "Solférino", "Stalingrad", "Strasbourg – Saint-Denis", "Sully-Morland", "Télégraphe", "Temple", "Ternes", "Tolbiac", "Tour Eiffel", "Trinité", "Trocadéro", "Tuileries", "Vaneau", "Varenne", "Vaugirard", "Vavin", "Victor Hugo", "Villejuif – Léo Lagrange", "Villejuif – Louis Aragon", "Villejuif – Paul Vaillant", "Villiers", "Volontaires", "Voltaire", "Wagram"]
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.landlord = current_user
    @flat.status = "Available"
    @flat.income_ratio = 1
    @flat.warrantor_income_ratio = 1
    authorize @flat
    if @flat.save
      redirect_to edit_flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @flat
    @flat.update(flat_params)
    redirect_to edit_flat_path(@flat)
  end

  def filter
    params[:flat][:has_warrantor] == "1" ? @flat.has_warrantor = true : @flat.has_warrantor = false
    @bookings = Booking.where(flat_id: params[:flat_id]).select { |booking| (booking.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (booking.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (booking.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @bookings_pending = @bookings.select { |booking| booking.status == "Pending" }
    @bookings_confirmed = @bookings.select { |booking| booking.status == "Confirmed" }
    @bookings_cancelled = @bookings.select { |booking| booking.status == "Cancelled" }
    @slots = Slot.where(flat_id: params[:flat_id]).where.not(tenant_id: nil).select { |slot| (slot.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (slot.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (slot.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @slots_booked = @slots.select { |slot| slot.status == "Booked" }
    @slots_cancelled = @slots.select { |slot| slot.status == "Cancelled" }
    if @flat.update(flat_filter_params)
      respond_to do |format|
        format.html { redirect_to flat_dossiers_path(@flat) }
        format.js  # <-- will render `app/views/flats/filter.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to flat_dossiers_path(@flat) }
        format.js  # <-- idem
      end
    end
  end

  def dossiers
    @bookings = Booking.where(flat_id: params[:flat_id]).select { |booking| (booking.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (booking.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (booking.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @bookings_pending = @bookings.select { |booking| booking.status == "Pending" }
    @bookings_confirmed = @bookings.select { |booking| booking.status == "Confirmed" }
    @bookings_cancelled = @bookings.select { |booking| booking.status == "Cancelled" }
    @slots = Slot.where(flat_id: params[:flat_id]).where.not(tenant_id: nil).select { |slot| (slot.tenant.has_warrantor == @flat.has_warrantor || @flat.has_warrantor == false) && (slot.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (slot.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @slots_booked = @slots.select { |slot| slot.status == "Booked" }
    @slots_cancelled = @slots.select { |slot| slot.status == "Cancelled" }
  end

  def show
    if @flat.slots.size > 0
      @slot = Slot.new
      @start_date = @flat.slots.order(starts_at: :asc).first.starts_at.strftime("%d/%m/%Y") # next slot date
      @slots_date = []
      @flat.slots.each do |slot|
      @slots_date << slot.starts_at.yesterday.strftime("%d/%m/%Y")
      end
      @slots_date.uniq!

      @flat.slots.each do |slot|
        slot.starts_at.strftime("%d/%m/%Y")
      end
    end
    # @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
    # @flats = Flat.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@flat) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def reservations
    @bookings = Booking.where(flat_id: params[:flat_id])
    @bookings_pending = Booking.where(status: "Pending", flat_id: params[:flat_id])
#    .select { |booking| (booking.tenant.has_warrantor == @flat.has_warrantor) && (booking.tenant.income >= (@flat.income_ratio * (@flat.rent + @flat.rental_costs))) && (booking.tenant.warrantor_income >= (@flat.warrantor_income_ratio * (@flat.rent + @flat.rental_costs)))}
    @bookings_confirmed = Booking.where(status: "Confirmed", flat_id: params[:flat_id])
    @bookings_cancelled = Booking.where(status: "Cancelled", flat_id: params[:flat_id])
  end

  def visits
    @slot = Slot.new
    @slot.starts_at = Date.today
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :rental_type, :furnished, :availability_date, :min_duration, :address, :is_address_public, :subway, :size, :description, :rent, :rental_costs, :floor, :rooms, :bedrooms, :balcony, :elevator, :separate_bathroom, :parking, photos: [])
  end

  def flat_filter_params
    params.require(:flat).permit(:income_ratio, :has_warrantor, :warrantor_income_ratio, :deposit)
  end

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def set_nested_flat
    @flat = Flat.find(params[:flat_id])
    authorize @flat
  end
end
